-- AlterTable
ALTER TABLE "payment" ADD COLUMN     "receipt_url" TEXT;

-- AlterTable
ALTER TABLE "product" ADD COLUMN     "available" BOOLEAN NOT NULL DEFAULT true;
