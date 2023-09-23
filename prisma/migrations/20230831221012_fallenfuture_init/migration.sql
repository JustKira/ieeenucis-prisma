-- CreateSchema
CREATE SCHEMA IF NOT EXISTS "fallenfuture";

-- CreateEnum
CREATE TYPE "fallenfuture"."FallenFutureRanks" AS ENUM ('NOVICE_STRATEGIST', 'TACTICAL_ADEPT', 'WAR_STRATEGIST', 'BATTLE_COMMANDER', 'WARLORD', 'WAR_ARCHON', 'SUPREME_GENERAL');

-- CreateEnum
CREATE TYPE "fallenfuture"."TroopType" AS ENUM ('AIRFORCE', 'TANKS', 'JUGGERNAUTS', 'TROOPERS', 'MEDICS', 'ASSASSINS');

-- CreateEnum
CREATE TYPE "fallenfuture"."Faction" AS ENUM ('AZURE_VANGUARD', 'CRIMSON_SKIES', 'ASTRAL_NEXUS');

-- CreateEnum
CREATE TYPE "fallenfuture"."Rarity" AS ENUM ('COMMON', 'UNCOMMON', 'RARE', 'EPIC', 'LEGENDARY', 'MYTHICAL');

-- CreateTable
CREATE TABLE "fallenfuture"."FallenFutureAccount" (
    "id" UUID NOT NULL,
    "username" TEXT NOT NULL,
    "ranks" "fallenfuture"."FallenFutureRanks" NOT NULL DEFAULT 'NOVICE_STRATEGIST',
    "score" INTEGER NOT NULL,

    CONSTRAINT "FallenFutureAccount_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "fallenfuture"."PlayerCard" (
    "id" BIGSERIAL NOT NULL,
    "inheritanceId" INTEGER NOT NULL,
    "name" TEXT NOT NULL,
    "troopType" "fallenfuture"."TroopType" NOT NULL,
    "hp" DOUBLE PRECISION NOT NULL,
    "armor" DOUBLE PRECISION NOT NULL,
    "shield" DOUBLE PRECISION NOT NULL,
    "attackPower" DOUBLE PRECISION NOT NULL,
    "attackRange" DOUBLE PRECISION NOT NULL,
    "movement" DOUBLE PRECISION NOT NULL,
    "power" DOUBLE PRECISION NOT NULL,
    "rarity" "fallenfuture"."Rarity" NOT NULL,
    "fallenFutureAccountId" UUID NOT NULL,

    CONSTRAINT "PlayerCard_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "fallenfuture"."PlayerCard" ADD CONSTRAINT "PlayerCard_fallenFutureAccountId_fkey" FOREIGN KEY ("fallenFutureAccountId") REFERENCES "fallenfuture"."FallenFutureAccount"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
