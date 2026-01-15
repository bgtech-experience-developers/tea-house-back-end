import { Get, Injectable,Controller } from "@nestjs/common";
import { PrismaClient, StatusPayment } from "prisma/generated/prisma/client";
import { PrismaService } from "../prisma/prisma.service";
import { dashboard, DashboardMetrics, metric } from "./interface/metric.interface";

@Controller('dashboard')
export class DashboardController{
    constructor(private readonly prisma:PrismaService){}
    @Get('/')
    async overviewDashboard(){
       const {dashboard} = await this.cardsMetricDashboard()
      
       return dashboard
    
    }
async cardsMetricDashboard(){
 const [dashboard] =  await this.prisma.$queryRaw`
WITH payment_metrics AS (
  SELECT
    COUNT(*) FILTER (WHERE status = 'PENDING')::int   AS pending,
    COUNT(*) FILTER (WHERE status = 'CONFIRMED')::int AS confirmed
  FROM payment
),
total_receive AS (
  SELECT
    COALESCE(SUM(product.price), 0)::int AS total
  FROM payment
  JOIN product ON product.id = payment.product_id
  WHERE payment.status = 'CONFIRMED'
),
payments_json AS (
  SELECT
    json_agg(
      json_build_object(
        'id', payment.id,
        'status', payment.status,
        'method', payment.method,
        'donor_name', payment.donor_name,
        'funny_message', payment.funny_message,
        'created_at', payment.created_at,
        'product', json_build_object(
          'id', product.id,
          'name', product.name,
          'price', product.price,
          'avatar_icon', product.avatar_icon
        )
      )
    ) AS payments
  FROM payment
  JOIN product ON product.id = payment.product_id
),
pix_messages_json AS (
  SELECT
    json_agg(
      json_build_object(
        'id', id,
        'donor_name', donor_name,
        'funny_name', funny_message,
        'created_at', created_at
      )
      ORDER BY created_at DESC
    ) AS pix_messages
  FROM pix_message
)
SELECT
  json_build_object(
    'metrics', json_build_object(
      'pending', payment_metrics.pending,
      'confirmed', payment_metrics.confirmed,
      'total_receive', total_receive.total
    ),
    'payments', COALESCE(payments_json.payments, '[]'::json),
    'pix_messages', COALESCE(pix_messages_json.pix_messages, '[]'::json)
  ) AS dashboard
FROM payment_metrics
CROSS JOIN total_receive
CROSS JOIN payments_json
CROSS JOIN pix_messages_json;


        ` as dashboard[]
      console.log(dashboard)
        
    return dashboard
}}