/*
  Warnings:

  - You are about to drop the column `message` on the `pix_message` table. All the data in the column will be lost.
  - You are about to drop the column `user_name` on the `pix_message` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "pix_message" DROP COLUMN "message",
DROP COLUMN "user_name",
ADD COLUMN     "donor_name" TEXT,
ADD COLUMN     "funny_message" TEXT;
