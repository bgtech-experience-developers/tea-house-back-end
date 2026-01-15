import { Module } from "@nestjs/common";
import { MessageController } from "./board.controller";
import { PrismaService } from "../prisma/prisma.service";

@Module({controllers:[MessageController],providers:[PrismaService]})
export class MessagesModule{}