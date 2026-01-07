import { IsNotEmpty, IsOptional, isString, IsString } from 'class-validator'

export class CreatePaymentDto {
  @IsString()
  @IsNotEmpty()
  customerName: string
  @IsString()
  @IsNotEmpty()
  receipt: string
  @IsString()
  @IsOptional()
  message:String
}
