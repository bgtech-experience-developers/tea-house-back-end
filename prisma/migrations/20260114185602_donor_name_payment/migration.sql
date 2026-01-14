/*
  Warnings:

  - Added the required column `donor_name` to the `payment` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "payment" ADD COLUMN     "donor_name" TEXT NOT NULL;
