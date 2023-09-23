/*
  Warnings:

  - A unique constraint covering the columns `[quizScheduleId,userId]` on the table `UserQuiz` will be added. If there are existing duplicate values, this will fail.

*/
-- DropIndex
DROP INDEX "quizzy"."UserQuiz_quizId_userId_key";

-- CreateIndex
CREATE UNIQUE INDEX "UserQuiz_quizScheduleId_userId_key" ON "quizzy"."UserQuiz"("quizScheduleId", "userId");
