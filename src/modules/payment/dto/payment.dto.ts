import { MethodPayment } from '@prisma/client'
import { IsEnum, IsNotEmpty, IsOptional, isString, IsString } from 'class-validator'

export class CreatePaymentDto {
  @IsString()
  @IsNotEmpty()
  customerName: string
  @IsString()
  @IsNotEmpty()
  receipt: string
  @IsString()
  @IsOptional()
  message:string
  @IsEnum(MethodPayment, {
    message: 'Método de pagamento inválido',
  })
  method: MethodPayment
}
