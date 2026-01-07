import { Global, Module } from '@nestjs/common';
import { MessagingGatewayService } from 'src/modules/service/messagingGateway.service';
import { RabbitMQModule } from '@golevelup/nestjs-rabbitmq';

@Global()
@Module({
  
  imports: [
     RabbitMQModule.forRoot({
      exchanges: [
        {
          name: 'newest-notify-service',
          type: 'topic',
        },
      ],
      uri: process.env.URL_RABBITMQ,
      connectionInitOptions: { wait: false },
    }),
  ],
  providers:[MessagingGatewayService],
  exports: [MessagingGatewayService],
})
export class RabbitmqConfigInfra {}