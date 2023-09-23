/*
  Warnings:

  - You are about to drop the column `name` on the `PlayerCard` table. All the data in the column will be lost.
  - You are about to drop the column `troopType` on the `PlayerCard` table. All the data in the column will be lost.
  - You are about to drop the column `duration` on the `Quiz` table. All the data in the column will be lost.
  - You are about to drop the column `endDate` on the `Quiz` table. All the data in the column will be lost.
  - You are about to drop the column `startDate` on the `Quiz` table. All the data in the column will be lost.

*/
-- DropForeignKey
ALTER TABLE "quizzy"."UserQuiz" DROP CONSTRAINT "UserQuiz_quizId_fkey";

-- AlterTable
ALTER TABLE "fallenfuture"."PlayerCard" DROP COLUMN "name",
DROP COLUMN "troopType";

-- AlterTable
ALTER TABLE "quizzy"."Quiz" DROP COLUMN "duration",
DROP COLUMN "endDate",
DROP COLUMN "startDate";

-- CreateTable
CREATE TABLE "quizzy"."QuizSchedule" (
    "id" BIGSERIAL NOT NULL,
    "startDate" TIMESTAMP(3) NOT NULL,
    "endDate" TIMESTAMP(3) NOT NULL,
    "duration" INTEGER NOT NULL,

    CONSTRAINT "QuizSchedule_pkey" PRIMARY KEY ("id")
);
