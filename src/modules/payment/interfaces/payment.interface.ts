import { MethodPayment, StatusPayment } from "./Payment.enum";

export interface Ipayment {
    id:string,
    status: StatusPayment,
    method: MethodPayment,
    donor_name:string,
    funny_message:string,
    created_at:Date
    
}