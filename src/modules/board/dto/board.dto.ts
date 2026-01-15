import { IsOptional, IsPort } from "class-validator";

export class BoardDTO{
    @IsOptional()
    donor_name:string | null
    @IsOptional()
    funny_message: string | null
}