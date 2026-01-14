import { Module } from "@nestjs/common";
import { DashboardController } from "./dashboard-metric.controller";
import { PrismaClient } from "prisma/generated/prisma/client";
import { PrismaService } from "../prisma/prisma.service";

@Module({controllers:[DashboardController],providers:[PrismaService]
})
export class DashboardModule{}