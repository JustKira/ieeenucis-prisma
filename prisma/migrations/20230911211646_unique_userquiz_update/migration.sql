/*
  Warnings:

  - A unique constraint covering the columns `[quizId,userId]` on the table `UserQuiz` will be added. If there are existing duplicate values, this will fail.

*/
-- CreateIndex
CREATE UNIQUE INDEX "UserQuiz_quizId_userId_key" ON "quizzy"."UserQuiz"("quizId", "userId");
