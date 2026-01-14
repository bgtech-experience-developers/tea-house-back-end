import { Get, Injectable,Controller } from "@nestjs/common";
import { PrismaClient, StatusPayment } from "prisma/generated/prisma/client";
import { PrismaService } from "../prisma/prisma.service";
import { DashboardMetrics, metric } from "./interface/metric.interface";

@Controller('dashboard')
export class DashboardController{
    constructor(private readonly prisma:PrismaService){}
    @Get('/')
    async overviewDashboard(){
       const cardsMetric = await this.cardsMetricDashboard()
    
    }
async cardsMetricDashboard(){
 const [metric]=  await this.prisma.$queryRaw`
WITH payment_metrics AS (
  SELECT
    COUNT(*) FILTER (WHERE status = 'PENDING')::int   AS pending,
    COUNT(*) FILTER (WHERE status = 'CONFIRMED')::int AS confirmed
  FROM payment
),
product_metrics AS (
  SELECT
    COUNT(*) FILTER (WHERE available = true)::int AS available
  FROM product
),
total_receive AS (
  SELECT
    COALESCE(SUM(product.price), 0)::int AS total
  FROM payment
  JOIN product ON product.id = payment.product_id
  WHERE payment.status = 'CONFIRMED'
),
total_achievment AS (
  SELECT
    COALESCE(SUM(product.price),0)::int AS total
  FROM product
)
SELECT
  json_build_object(
    'available',         product_metrics.available,
    'pending',           payment_metrics.pending,
    'confirmed',         payment_metrics.confirmed,
    'total_receive',     total_receive.total,
    'total_achievment',  total_achievment.total
  ) AS metrics
FROM product_metrics
CROSS JOIN payment_metrics
CROSS JOIN total_receive
CROSS JOIN total_achievment;


        ` as metric[]
    return metric
}}