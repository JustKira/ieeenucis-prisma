/*
  Warnings:

  - Added the required column `quizId` to the `QuizSchedule` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "quizzy"."QuizSchedule" ADD COLUMN     "quizId" BIGINT NOT NULL;

-- AddForeignKey
ALTER TABLE "quizzy"."QuizSchedule" ADD CONSTRAINT "QuizSchedule_quizId_fkey" FOREIGN KEY ("quizId") REFERENCES "quizzy"."Quiz"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
