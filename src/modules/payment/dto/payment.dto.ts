
import { MethodPayment } from 'prisma/generated/prisma/enums'
import { IsEnum, IsNotEmpty, IsOptional, isString, IsString } from 'class-validator'


export class CreatePaymentDto {
  @IsString()
  @IsNotEmpty()
  customerName: string
  @IsString()
  @IsOptional()
  receipt?: string
  @IsString()
  @IsOptional()
  message:string
  @IsEnum(MethodPayment, {
    message: 'Método de pagamento inválido',
  })
  method: MethodPayment
}
