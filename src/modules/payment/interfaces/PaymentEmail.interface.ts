import { IPayloadEmail } from "src/common/interfaces/email.interface";

export interface EmailPaymentCreated extends IPayloadEmail{
    productName:string,
    productPrice:number,
    customerName:string
}