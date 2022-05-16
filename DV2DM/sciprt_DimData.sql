CREATE TABLE dbo.DimDate (
   SK_Data INT NOT NULL PRIMARY KEY,
   [BK_Date] DATE NOT NULL,
   [Day] TINYINT NOT NULL,
   [DayOfYear] SMALLINT NOT NULL,
   [WeekDayName] VARCHAR(10) NOT NULL,
   [Month] TINYINT NOT NULL,
   [MonthName] VARCHAR(10) NOT NULL,
   [Quarter] TINYINT NOT NULL,
   [QuarterName] VARCHAR(6) NOT NULL,
   [Year] INT NOT NULL,
)
GO
SET NOCOUNT ON

TRUNCATE TABLE DimDate

DECLARE @CurrentDate DATE = '2000-01-01'
DECLARE @EndDate DATE = '2022-12-31'

WHILE @CurrentDate < @EndDate
BEGIN
   INSERT INTO [dbo].[DimDate] (
      SK_Data,
      [BK_Date],
      [Day],
      [WeekDayName],
      [DayOfYear],
      [Month],
      [MonthName],
      [Quarter],
      [QuarterName],
      [Year]
      )
   SELECT SK_Data = YEAR(@CurrentDate) * 10000 + MONTH(@CurrentDate) * 100 + DAY(@CurrentDate),
      [BK_Date] = @CurrentDate,
      [Day] = DAY(@CurrentDate),
      WeekDayName = DATENAME(dw, @CurrentDate),
      [DayOfYear] = DATENAME(dy, @CurrentDate),
      [Month] = MONTH(@CurrentDate),
      [MonthName] = DATENAME(mm, @CurrentDate),
      [Quarter] = DATEPART(q, @CurrentDate),
      [QuarterName] = CASE 
         WHEN DATENAME(qq, @CurrentDate) = 1
            THEN 'First'
         WHEN DATENAME(qq, @CurrentDate) = 2
            THEN 'second'
         WHEN DATENAME(qq, @CurrentDate) = 3
            THEN 'third'
         WHEN DATENAME(qq, @CurrentDate) = 4
            THEN 'fourth'
         END,
      [Year] = YEAR(@CurrentDate)
   SET @CurrentDate = DATEADD(DD, 1, @CurrentDate)
END