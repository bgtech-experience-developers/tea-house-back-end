import { Body, Controller, Param, Post } from "@nestjs/common";
import { CreatePaymentDto } from "./dto/payment.dto";
import { prisma } from "src/prismaClienteInstance";

@Controller('payment')
export class PaymentController{
    @Post('/:productId/pix')
    async createPix(@Param('productId') productId:string, @Body() Body:CreatePaymentDto){
    const constumer = await this.costumerExist(Body.customerName)
    if(!constumer){
        this.createCustomer(Body.customerName)
    }
    
    }
    async costumerExist(name:string){
       return await prisma.cOSTUMER.findFirst({where:{name}})
    }
    async createCustomer(name:string){
        await prisma.cOSTUMER.create({data:{name}})
    }
}