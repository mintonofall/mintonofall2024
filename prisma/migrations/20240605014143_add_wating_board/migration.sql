-- CreateTable
CREATE TABLE "WatingBoard" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "place" INTEGER NOT NULL,
    "playerId" INTEGER NOT NULL,
    "clubId" INTEGER,
    "createdAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" DATETIME NOT NULL,
    CONSTRAINT "WatingBoard_playerId_fkey" FOREIGN KEY ("playerId") REFERENCES "Player" ("id") ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT "WatingBoard_clubId_fkey" FOREIGN KEY ("clubId") REFERENCES "Club" ("id") ON DELETE SET NULL ON UPDATE CASCADE
);