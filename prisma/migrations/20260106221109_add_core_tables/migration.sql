/*
  Warnings:

  - You are about to drop the `product_category` table. If the table is not empty, all the data it contains will be lost.
  - Added the required column `avatar_icon` to the `product` table without a default value. This is not possible if the table is not empty.
  - Added the required column `category_id` to the `product` table without a default value. This is not possible if the table is not empty.
  - Added the required column `price` to the `product` table without a default value. This is not possible if the table is not empty.

*/
-- CreateEnum
CREATE TYPE "MethodPayment" AS ENUM ('PIX', 'DEBIT_CARD', 'CREDIT_CARD');

-- CreateEnum
CREATE TYPE "StatusPayment" AS ENUM ('PENDING', 'RECUSED', 'CONFIRMED');

-- DropForeignKey
ALTER TABLE "product_category" DROP CONSTRAINT "product_category_id_category_fkey";

-- DropForeignKey
ALTER TABLE "product_category" DROP CONSTRAINT "product_category_id_product_fkey";

-- AlterTable
ALTER TABLE "category" ADD COLUMN     "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "updated_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP;

-- AlterTable
ALTER TABLE "product" ADD COLUMN     "avatar_icon" TEXT NOT NULL,
ADD COLUMN     "category_id" TEXT NOT NULL,
ADD COLUMN     "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "price" INTEGER NOT NULL,
ADD COLUMN     "updated_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP;

-- DropTable
DROP TABLE "product_category";

-- CreateTable
CREATE TABLE "costumer" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- CreateTable
CREATE TABLE "payment" (
    "id" TEXT NOT NULL,
    "method" "MethodPayment" NOT NULL,
    "status" "StatusPayment" NOT NULL,
    "product_id" TEXT NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- CreateIndex
CREATE UNIQUE INDEX "costumer_id_key" ON "costumer"("id");

-- CreateIndex
CREATE UNIQUE INDEX "payment_id_key" ON "payment"("id");

-- AddForeignKey
ALTER TABLE "product" ADD CONSTRAINT "product_category_id_fkey" FOREIGN KEY ("category_id") REFERENCES "category"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
