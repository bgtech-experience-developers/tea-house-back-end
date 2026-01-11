import { Injectable } from "@nestjs/common";
import { MessagingGatewayService } from "./messagingGateway.service";
import { ProductDTO } from "../product/dto/product.dto";
import { EmailPaymentCreated } from "../payment/interfaces/PaymentEmail.interface";
import { modelEmailTemplete, TemplateEmail } from "src/common/interfaces/email.interface";

@Injectable()
export class NotifyService{
    constructor(private readonly messagingGateway:MessagingGatewayService){}
     async sendNotificationPix(customerName:string,product:ProductDTO){
        const payloadNotificationPix:EmailPaymentCreated = {
            customerName,emailUser: 'sabrinakmm@hotmail.com', model: modelEmailTemplete.TEA, productName:product.name,productPrice:product.price,subject: '💚 Um presente acabou de ser pago!',
            templete: TemplateEmail.GIFT
        }
        this.messagingGateway.sendToQueue('',payloadNotificationPix)
     }
}