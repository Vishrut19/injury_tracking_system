-- CreateTable
CREATE TABLE "User" (
    "_id" INTEGER NOT NULL,
    "email" TEXT NOT NULL,
    "password" TEXT NOT NULL,

    CONSTRAINT "User_pkey" PRIMARY KEY ("_id")
);

-- CreateTable
CREATE TABLE "Report" (
    "_id" INTEGER NOT NULL,
    "reporter" TEXT NOT NULL,
    "date" TEXT NOT NULL,
    "time" TEXT NOT NULL,

    CONSTRAINT "Report_pkey" PRIMARY KEY ("_id")
);

-- CreateTable
CREATE TABLE "Injury" (
    "_id" INTEGER NOT NULL,
    "report_id" INTEGER NOT NULL,
    "body_part" TEXT NOT NULL,
    "description" TEXT NOT NULL,

    CONSTRAINT "Injury_pkey" PRIMARY KEY ("_id")
);

-- CreateIndex
CREATE UNIQUE INDEX "User_email_key" ON "User"("email");

-- AddForeignKey
ALTER TABLE "Injury" ADD CONSTRAINT "Injury_report_id_fkey" FOREIGN KEY ("report_id") REFERENCES "Report"("_id") ON DELETE RESTRICT ON UPDATE CASCADE;
