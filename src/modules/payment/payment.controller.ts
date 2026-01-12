import { Body, ConflictException, Controller, Get, Logger, NotFoundException, Param, Patch, Post, Put } from "@nestjs/common";
import { CreatePaymentDto } from "./dto/payment.dto";
import { PrismaService } from "../prisma/prisma.service";
import { NotFoundError, throwError } from "rxjs";
import { StatusPayment } from "prisma/generated/prisma/enums";
import path from "path";
import { NotifyService } from "../service/notification.service";

@Controller('payment')
export class PaymentController{
    constructor(private readonly prisma:PrismaService,private readonly notification:NotifyService){}
    @Get('/load')
    async loadPayment(){
    return await this.prisma.pAYMENT.findMany({include:{product:true}})
    }
    @Post('/:productId/pix')
    async createPix(@Param('productId') productId:string, @Body() Body:CreatePaymentDto){
        try{
            const customer = await this.costumerExist(Body.customerName)
          
            const product = await this.productExist(productId)
            await this.ensureProductCanReceivePayment(product.id)
            
            await this.prisma.$transaction(async (tsx)=>{
                
                await tsx.pAYMENT.create({data:{method: Body.method,product_id:product.id,status:'PENDING',funny_message:Body.message}})
                await tsx.pRODUCT.update({where:{id:productId},data:{available:false}})
                
            })
             this.notification.sendNotificationPix(customer.name,product)
            return 'Created Payment'
            


        }catch(error){
            Logger.error('Failed to create payment', error)
            return ' Failed to create payment'
            
        }
    
    }
    @Patch('/:paymentId/recused')
    async recused(@Param('paymentId') paymentId:string){
               const payment = await this.validExistPayment(paymentId)
        const product = await this.productExist(payment.product_id)
        await this.checkPaymentRecused(payment.status,product.available)
        await this.modifyStatusAndAvailable(payment.id,'RECUSED',true)
        return 'Payment Recused'
    }
    @Patch('/:paymentId/confirm')
    async confirm(@Param('paymentId') paymentId:string){
        const payment = await this.validExistPayment(paymentId)
        const product = await this.productExist(payment.product_id)
        await this.checkCPaymentToProcess(payment.status,product.available)
        await this.modifyStatusAndAvailable(payment.id,'CONFIRMED',false)
        return 'Payment Confirmed'    }
 async modifyStatusAndAvailable(
  paymentId: string,
  status: StatusPayment,
  availableProduct: boolean
) {
    try{
        await this.prisma.$transaction(async(tsx)=>{
            await tsx.$executeRaw`UPDATE payment
              SET status = ${status}
              WHERE id = ${paymentId}`
            await tsx.$executeRaw`UPDATE product
              SET available = ${availableProduct}
              WHERE id = (
                SELECT product_id FROM payment WHERE id = ${paymentId}
              )`
        })
    }catch(error){
        Logger.error('Error in Process Payment',error)
    }
}
async validExistPayment(paymentId:string){
    const payment = await this.prisma.pAYMENT.findFirst({where:{id:paymentId}})
    if(!payment){
        throw new NotFoundException('Payment Not Found')
    }
    return payment
}
async checkCPaymentToProcess(statusPayment:StatusPayment,productAvailable:boolean){
    if((statusPayment !== StatusPayment.PENDING) || productAvailable){
        throw new ConflictException('Payment cannot be processed')
    }
    return true

}
async checkPaymentRecused(statusPayment:StatusPayment,productAvailable:boolean){
     if((statusPayment !== StatusPayment.PENDING && statusPayment !== StatusPayment.CONFIRMED) || productAvailable){
        throw new ConflictException('Payment cannot be processed')
    }
    return true
}
async ensureProductCanReceivePayment(productId: string): Promise<void> {
  const blockingPayment = await this.prisma.pAYMENT.findFirst({
    where: {
      product_id: productId,
      status: {
        not: StatusPayment.RECUSED,
      },
    },
    select: { id: true },
  })

  if (blockingPayment) {
    throw new ConflictException(
      'Product already has a pending or confirmed payment',
    )
  }
}
async modifyAvailableProduct(isAvailable:boolean,productId:string){
    await this.prisma.pRODUCT.update({where:{id:productId},data:{available:isAvailable}})
    return true
}

    async productExist(productId:string){
        const product = await this.prisma.pRODUCT.findFirst({where:{id:productId}})
         if(!product){
               throw new NotFoundException('Product not found')
            }
        return product
    }
    async costumerExist(name:string){
       const customer =  await this.prisma.cOSTUMER.findFirst({where:{name}})
         if(!customer){
            return await this.createCustomer(name)
            }
    return customer
    }
    async createCustomer(name:string){
      return  await this.prisma.cOSTUMER.create({data:{name}})
    }
}