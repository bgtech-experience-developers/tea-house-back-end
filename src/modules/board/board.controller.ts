import { Body, Controller, Post,Get } from "@nestjs/common";
import { PrismaService } from "../prisma/prisma.service";
import { BoardDTO } from "./dto/board.dto";

@Controller('/board')
export class MessageController{
    constructor(private readonly prismaService:PrismaService){ }
    @Post('/donation-pix')
    async freeDonationPix(@Body() body:BoardDTO){
        await this.prismaService.pIX_MESSAGE.create({data:{...body,created_at:new Date()}})
        return 'donation created'
    }
    @Get('/')
    async listBoard(){
        return await this.prismaService.pIX_MESSAGE.findMany({orderBy:{created_at:"asc"}})
    }
}