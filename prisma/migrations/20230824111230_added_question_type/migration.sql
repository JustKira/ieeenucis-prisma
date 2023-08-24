/*
  Warnings:

  - Added the required column `questionType` to the `Question` table without a default value. This is not possible if the table is not empty.

*/
-- CreateEnum
CREATE TYPE "quizzy"."QuestionTypes" AS ENUM ('MSQ', 'TF', 'CODE');

-- AlterTable
ALTER TABLE "quizzy"."Question" ADD COLUMN     "questionType" "quizzy"."QuestionTypes" NOT NULL;
