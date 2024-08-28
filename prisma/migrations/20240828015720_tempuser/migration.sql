/*
  Warnings:

  - You are about to drop the column `password` on the `verification_tokens` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "verification_tokens" DROP COLUMN "password";

-- CreateTable
CREATE TABLE "TempUser" (
    "id" SERIAL NOT NULL,
    "email" TEXT NOT NULL,
    "password" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "TempUser_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "TempUser_email_key" ON "TempUser"("email");
