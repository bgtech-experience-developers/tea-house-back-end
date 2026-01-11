import { AmqpConnection } from "@golevelup/nestjs-rabbitmq";
import { Injectable } from "@nestjs/common";

@Injectable()
export class MessagingGatewayService{
    constructor(private readonly client:AmqpConnection){}
      async sendToQueue<T = any>(queue: string, payload: T) {
   
    
     this.client.publish('newest-notify-service','user-email',payload)
  }

}