import { Controller, Get } from "@nestjs/common";
import { PrismaClient } from "@prisma/client";
import { Prisma } from "src/generated/prisma/client";
import {prisma} from "src/prismaClienteInstance";


@Controller('product')
export class ProductController{
  
    @Get('/')
    async getProductList(){
    return await prisma.pRODUCT.findMany({include:{category:true}})
        
    }
    @Get('/metric')
    async getMetricProduct(){

    }
    @Get('/total')
    async totalAvailableProduct(){
        return await prisma.pRODUCT.count({where:{available:true}})
    }}