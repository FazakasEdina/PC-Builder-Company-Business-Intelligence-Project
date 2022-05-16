declare @computername varchar(50);
declare @mydate date;

DECLARE cursor_name CURSOR
    FOR SELECT PC_Builder_Company_DV.[dbo].HubComputers.ComputerName, PC_Builder_Company_DV.[dbo].SatSales.[Date]
FROM   PC_Builder_Company_DV.[dbo].LinkSales   INNER JOIN
PC_Builder_Company_DV.[dbo].HubComputers ON PC_Builder_Company_DV.[dbo].LinkSales.H_Computer_SQN = PC_Builder_Company_DV.[dbo].HubComputers.H_Computers_SQN INNER JOIN
PC_Builder_Company_DV.[dbo].SatSales ON PC_Builder_Company_DV.[dbo].LinkSales.L_Sales_SQN = PC_Builder_Company_DV.[dbo].SatSales.L_Sales_SQN

OPEN cursor_name;
FETCH NEXT FROM cursor_name INTO @computername, @mydate;

WHILE @@FETCH_STATUS = 0  
    BEGIN
	select * from PC_Builder_Company_DM.[dbo].FactSales
	where SK_Computers IN (select SK_Computers from PC_Builder_Company_DM.[dbo].DimComputers where BK_Computers = @computername);


	update PC_Builder_Company_DM.[dbo].FactSales
	set SK_Date = YEAR(@mydate) * 10000 + MONTH(@mydate) * 100 + DAY(@mydate)
	where SK_Computers IN (select SK_Computers from PC_Builder_Company_DM.[dbo].DimComputers where BK_Computers = @computername);
       
	FETCH NEXT FROM cursor_name INTO @computername, @mydate;  
    END;

CLOSE cursor_name;
DEALLOCATE cursor_name;

