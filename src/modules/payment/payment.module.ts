import { Module } from "@nestjs/common";
import { PaymentService } from "./payment.service";
import { PaymentController } from "./payment.controller";
import { NotifyService } from "../service/notification.service";

@Module({controllers:[PaymentController],providers:[PaymentService,NotifyService],exports: [PaymentService]})
export class PaymentModule{}