import { Injectable, Logger, OnModuleInit } from "@nestjs/common";
import { PrismaPg } from "@prisma/adapter-pg";
import { PrismaClient } from "prisma/generated/prisma/client";
import { PrismaClientValidationError } from "prisma/generated/prisma/internal/prismaNamespace";


@Injectable()
export class PrismaService extends PrismaClient implements OnModuleInit {
    constructor(){
        const adpter = new PrismaPg({connectionString:process.env.DATABASE_URL})
        super({
        adapter: adpter
        })

    }
    async onModuleInit() {
        try {
            await this.$queryRaw`SELECT 1`
        Logger.log('Database connection estabilished')
        }catch(error){
            Logger.log('Database connection Failed',error)
            throw error
        }
    }
}