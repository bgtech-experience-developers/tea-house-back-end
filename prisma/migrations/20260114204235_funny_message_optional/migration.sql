-- AlterTable
ALTER TABLE "payment" ALTER COLUMN "funny_message" DROP NOT NULL;

-- CreateTable
CREATE TABLE "pix_message" (
    "id" TEXT NOT NULL,
    "user_name" TEXT,
    "message" TEXT,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "pix_message_pkey" PRIMARY KEY ("id")
);
