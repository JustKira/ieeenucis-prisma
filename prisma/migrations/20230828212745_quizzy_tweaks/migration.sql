/*
  Warnings:

  - You are about to drop the column `question` on the `Question` table. All the data in the column will be lost.
  - You are about to drop the column `questionType` on the `Question` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "quizzy"."Question" DROP COLUMN "question",
DROP COLUMN "questionType";
