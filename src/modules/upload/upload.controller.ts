import { Controller, Post, UseInterceptors } from "@nestjs/common";
import { FileInterceptor } from "@nestjs/platform-express";
import { diskStorage } from 'multer'
import { randomUUID } from "crypto";
import { extname } from "path";
import { BadRequestException } from "@nestjs/common";
import { UploadedFile } from "@nestjs/common";


@Controller('uploads')
export class UploadController{

@Post('/receipt')
@UseInterceptors(
  FileInterceptor('receipt', {
    storage: diskStorage({
      destination: './uploads/receipts',
      filename: (_, file, cb) => {
        const uniqueName = `${crypto.randomUUID()}-${file.originalname}`
        cb(null, uniqueName)
      },
    }),
  fileFilter: (_req, file, cb)=>{ 
     const allowed = [
    'application/pdf',
    'image/jpeg',
    'image/png',
  ]

  if (!allowed.includes(file.mimetype)) {
    return cb(
      new BadRequestException(
        'Formato inválido. Envie PDF, JPG ou PNG.',
      ),
      false,
    )
  }

  cb(null, true)
}}),)
uploadReceipt(@UploadedFile() file: Express.Multer.File) {
  return {
    receiptUrl: `/files/receipts/${file.filename}`,
  }
}


}