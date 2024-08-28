/*
  Warnings:

  - Added the required column `password` to the `verification_tokens` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "verification_tokens" ADD COLUMN     "password" TEXT NOT NULL;
