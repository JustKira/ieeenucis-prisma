/*
  Warnings:

  - You are about to drop the column `endDate` on the `QuizSchedule` table. All the data in the column will be lost.
  - Added the required column `code` to the `QuizSchedule` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "quizzy"."QuizSchedule" DROP COLUMN "endDate",
ADD COLUMN     "code" TEXT NOT NULL;
