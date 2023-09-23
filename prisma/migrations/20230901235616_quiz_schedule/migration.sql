/*
  Warnings:

  - Added the required column `quizScheduleId` to the `UserQuiz` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "quizzy"."UserQuiz" ADD COLUMN     "quizScheduleId" BIGINT NOT NULL;

-- AddForeignKey
ALTER TABLE "quizzy"."UserQuiz" ADD CONSTRAINT "UserQuiz_quizScheduleId_fkey" FOREIGN KEY ("quizScheduleId") REFERENCES "quizzy"."QuizSchedule"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
