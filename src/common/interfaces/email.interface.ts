export interface IPayloadEmail{
    subject:string
    emailUser:string
    templete:TemplateEmail
    model:modelEmailTemplete
}
export enum TemplateEmail{
    
    GIFT='gift'
}
export enum modelEmailTemplete{
    TEA='tea-house'
}