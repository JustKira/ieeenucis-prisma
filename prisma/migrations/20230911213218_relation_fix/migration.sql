-- AddForeignKey
ALTER TABLE "quizzy"."UserQuiz" ADD CONSTRAINT "UserQuiz_quizId_fkey" FOREIGN KEY ("quizId") REFERENCES "quizzy"."Quiz"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
