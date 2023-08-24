/*
  Warnings:

  - You are about to drop the column `answers` on the `Question` table. All the data in the column will be lost.
  - Added the required column `questionObject` to the `Question` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "quizzy"."Question" DROP COLUMN "answers",
ADD COLUMN     "questionObject" JSONB NOT NULL;
