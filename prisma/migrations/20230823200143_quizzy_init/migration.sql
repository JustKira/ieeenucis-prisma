-- CreateSchema
CREATE SCHEMA IF NOT EXISTS "quizzy";

-- CreateTable
CREATE TABLE "quizzy"."Quiz" (
    "id" BIGSERIAL NOT NULL,
    "quizName" TEXT NOT NULL,
    "startDate" TIMESTAMP(3) NOT NULL,
    "endDate" TIMESTAMP(3) NOT NULL,
    "duration" INTEGER NOT NULL,

    CONSTRAINT "Quiz_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "quizzy"."QuizQuestions" (
    "id" BIGSERIAL NOT NULL,
    "quizId" BIGINT NOT NULL,
    "questionId" BIGINT NOT NULL,

    CONSTRAINT "QuizQuestions_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "quizzy"."UserQuiz" (
    "id" BIGSERIAL NOT NULL,
    "answers" JSONB NOT NULL,
    "quizId" BIGINT NOT NULL,
    "userId" BIGINT NOT NULL,
    "autoGrade" INTEGER NOT NULL,
    "manualGrade" INTEGER NOT NULL,

    CONSTRAINT "UserQuiz_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "quizzy"."QuestionsCollection" (
    "id" BIGSERIAL NOT NULL,
    "collectionName" TEXT NOT NULL,

    CONSTRAINT "QuestionsCollection_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "quizzy"."QuestionsCollectionQuestions" (
    "id" BIGSERIAL NOT NULL,
    "questionsCollectionId" BIGINT NOT NULL,
    "questionId" BIGINT NOT NULL,

    CONSTRAINT "QuestionsCollectionQuestions_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "quizzy"."Question" (
    "id" BIGSERIAL NOT NULL,
    "question" TEXT NOT NULL,
    "answers" JSONB NOT NULL,

    CONSTRAINT "Question_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "quizzy"."QuizQuestions" ADD CONSTRAINT "QuizQuestions_quizId_fkey" FOREIGN KEY ("quizId") REFERENCES "quizzy"."Quiz"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "quizzy"."QuizQuestions" ADD CONSTRAINT "QuizQuestions_questionId_fkey" FOREIGN KEY ("questionId") REFERENCES "quizzy"."Question"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "quizzy"."UserQuiz" ADD CONSTRAINT "UserQuiz_quizId_fkey" FOREIGN KEY ("quizId") REFERENCES "quizzy"."Quiz"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "quizzy"."UserQuiz" ADD CONSTRAINT "UserQuiz_userId_fkey" FOREIGN KEY ("userId") REFERENCES "public"."User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "quizzy"."QuestionsCollectionQuestions" ADD CONSTRAINT "QuestionsCollectionQuestions_questionsCollectionId_fkey" FOREIGN KEY ("questionsCollectionId") REFERENCES "quizzy"."QuestionsCollection"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "quizzy"."QuestionsCollectionQuestions" ADD CONSTRAINT "QuestionsCollectionQuestions_questionId_fkey" FOREIGN KEY ("questionId") REFERENCES "quizzy"."Question"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
