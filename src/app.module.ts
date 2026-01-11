import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { ProductModule } from './modules/product/product.module';
import { PrismaModule } from './modules/prisma/prisma.module';
import { PaymentModule } from './modules/payment/payment.module';
import { UploadModule } from './modules/upload/upload.module';
import { ConfigModule } from '@nestjs/config';
import { RabbitmqConfigInfra } from './config/rabbitmqConnection.config';
import { ServeStaticModule } from '@nestjs/serve-static'
import { join } from 'path'



@Module({
  imports: [ProductModule,PrismaModule,PaymentModule,UploadModule,ConfigModule.forRoot(),RabbitmqConfigInfra,  ServeStaticModule.forRoot({
      rootPath: join(process.cwd(), 'uploads'),
      serveRoot: '/files', 
    }),],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {}
