/*
  Warnings:

  - You are about to drop the `TempUser` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
DROP TABLE "TempUser";

-- CreateTable
CREATE TABLE "TemporaryUser" (
    "id" SERIAL NOT NULL,
    "email" TEXT NOT NULL,
    "password" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "TemporaryUser_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "TemporaryUser_email_key" ON "TemporaryUser"("email");
