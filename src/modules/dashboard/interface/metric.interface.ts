import { Ipayment } from "src/modules/payment/interfaces/payment.interface";
import { ProductDTO } from "src/modules/product/dto/product.dto";
import { Iproduct } from "src/modules/product/interface/product.interface";

export interface DashboardMetrics {
  available: number;
  pending: number;
  confirmed: number;
  total_receive: number;
}
export interface metric {
    metrics: DashboardMetrics
    payments: Ipayment & {product:Iproduct}
    pix_messages: {
        id:string,
        user_name?:string
        message?:string
      created_at: Date

    }
}
export interface dashboard {
  dashboard:metric
}
