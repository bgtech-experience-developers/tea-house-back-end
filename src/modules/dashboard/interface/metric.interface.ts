export interface DashboardMetrics {
  available: number;
  pending: number;
  confirmed: number;
  total_receive: number;
  total_achievment:number
}
export interface metric {
    metrics: DashboardMetrics
}
