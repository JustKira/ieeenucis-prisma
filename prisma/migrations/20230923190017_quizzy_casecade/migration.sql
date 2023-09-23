-- DropForeignKey
ALTER TABLE "quizzy"."QuestionsCollectionQuestions" DROP CONSTRAINT "QuestionsCollectionQuestions_questionId_fkey";

-- DropForeignKey
ALTER TABLE "quizzy"."QuestionsCollectionQuestions" DROP CONSTRAINT "QuestionsCollectionQuestions_questionsCollectionId_fkey";

-- DropForeignKey
ALTER TABLE "quizzy"."QuizQuestions" DROP CONSTRAINT "QuizQuestions_questionId_fkey";

-- DropForeignKey
ALTER TABLE "quizzy"."QuizQuestions" DROP CONSTRAINT "QuizQuestions_quizId_fkey";

-- DropForeignKey
ALTER TABLE "quizzy"."QuizSchedule" DROP CONSTRAINT "QuizSchedule_quizId_fkey";

-- DropForeignKey
ALTER TABLE "quizzy"."UserQuiz" DROP CONSTRAINT "UserQuiz_quizId_fkey";

-- DropForeignKey
ALTER TABLE "quizzy"."UserQuiz" DROP CONSTRAINT "UserQuiz_quizScheduleId_fkey";

-- DropForeignKey
ALTER TABLE "quizzy"."UserQuiz" DROP CONSTRAINT "UserQuiz_userId_fkey";

-- AddForeignKey
ALTER TABLE "quizzy"."QuizSchedule" ADD CONSTRAINT "QuizSchedule_quizId_fkey" FOREIGN KEY ("quizId") REFERENCES "quizzy"."Quiz"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "quizzy"."QuizQuestions" ADD CONSTRAINT "QuizQuestions_quizId_fkey" FOREIGN KEY ("quizId") REFERENCES "quizzy"."Quiz"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "quizzy"."QuizQuestions" ADD CONSTRAINT "QuizQuestions_questionId_fkey" FOREIGN KEY ("questionId") REFERENCES "quizzy"."Question"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "quizzy"."UserQuiz" ADD CONSTRAINT "UserQuiz_quizScheduleId_fkey" FOREIGN KEY ("quizScheduleId") REFERENCES "quizzy"."QuizSchedule"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "quizzy"."UserQuiz" ADD CONSTRAINT "UserQuiz_quizId_fkey" FOREIGN KEY ("quizId") REFERENCES "quizzy"."Quiz"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "quizzy"."UserQuiz" ADD CONSTRAINT "UserQuiz_userId_fkey" FOREIGN KEY ("userId") REFERENCES "public"."User"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "quizzy"."QuestionsCollectionQuestions" ADD CONSTRAINT "QuestionsCollectionQuestions_questionsCollectionId_fkey" FOREIGN KEY ("questionsCollectionId") REFERENCES "quizzy"."QuestionsCollection"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "quizzy"."QuestionsCollectionQuestions" ADD CONSTRAINT "QuestionsCollectionQuestions_questionId_fkey" FOREIGN KEY ("questionId") REFERENCES "quizzy"."Question"("id") ON DELETE CASCADE ON UPDATE CASCADE;
