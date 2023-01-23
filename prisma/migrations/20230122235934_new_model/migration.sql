/*
  Warnings:

  - Added the required column `number` to the `Seat` table without a default value. This is not possible if the table is not empty.
  - Added the required column `screenId` to the `Seat` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Seat" ADD COLUMN     "number" INTEGER NOT NULL,
ADD COLUMN     "screenId" INTEGER NOT NULL;

-- AddForeignKey
ALTER TABLE "Seat" ADD CONSTRAINT "Seat_screenId_fkey" FOREIGN KEY ("screenId") REFERENCES "Screen"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
