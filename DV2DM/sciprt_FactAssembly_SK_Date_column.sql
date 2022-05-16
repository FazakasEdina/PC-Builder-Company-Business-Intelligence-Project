declare @computername varchar(50);
declare @seria varchar(50);
declare @manufacturerer varchar(50);
declare @mydate date;

DECLARE cursor_name CURSOR
    FOR 
SELECT PC_Builder_Company_DV.[dbo].HubComponents.Seria, PC_Builder_Company_DV.[dbo].HubManufacturers.ManufacturerName, PC_Builder_Company_DV.[dbo].HubComputers.ComputerName, PC_Builder_Company_DV.[dbo].SatPurchase.[Date]
FROM PC_Builder_Company_DV.[dbo].LinkAssembly INNER JOIN
    PC_Builder_Company_DV.[dbo].HubComponents ON PC_Builder_Company_DV.[dbo].LinkAssembly.H_Components_SQN = PC_Builder_Company_DV.[dbo].HubComponents.H_Components_SQN INNER JOIN
    PC_Builder_Company_DV.[dbo].HubComputers ON PC_Builder_Company_DV.[dbo].LinkAssembly.H_Computers_SQN = PC_Builder_Company_DV.[dbo].HubComputers.H_Computers_SQN INNER JOIN
    PC_Builder_Company_DV.[dbo].LinkPurchase ON PC_Builder_Company_DV.[dbo].HubComponents.H_Components_SQN = PC_Builder_Company_DV.[dbo].LinkPurchase.H_Components_SQN INNER JOIN
    PC_Builder_Company_DV.[dbo].HubManufacturers ON PC_Builder_Company_DV.[dbo].LinkPurchase.H_Manufacturers_SQN = PC_Builder_Company_DV.[dbo].HubManufacturers.H_Manufacturers_SQN INNER JOIN
    PC_Builder_Company_DV.[dbo].SatPurchase ON PC_Builder_Company_DV.[dbo].LinkPurchase.L_Purchase_SQN = PC_Builder_Company_DV.[dbo].SatPurchase.L_Purchase_SQN


OPEN cursor_name;
FETCH NEXT FROM cursor_name INTO @seria, @manufacturerer, @computername, @mydate;

WHILE @@FETCH_STATUS = 0  
    BEGIN
	select * from PC_Builder_Company_DM.[dbo].FactAssembly
	where SK_Computers IN (select SK_Computers from PC_Builder_Company_DM.[dbo].DimComputers where BK_Computers = @computername)
		and SK_Manufacturers IN (select SK_Manufacturers from PC_Builder_Company_DM.[dbo].DimManufacturers where BK_Manifacturers = @manufacturerer)
		and SK_Components IN (select SK_Components from PC_Builder_Company_DM.[dbo].DimComponents where BK_Components = @seria);


	update PC_Builder_Company_DM.[dbo].FactAssembly
	set SK_Date = YEAR(@mydate) * 10000 + MONTH(@mydate) * 100 + DAY(@mydate)
	where SK_Computers IN (select SK_Computers from PC_Builder_Company_DM.[dbo].DimComputers where BK_Computers = @computername)
		and SK_Manufacturers IN (select SK_Manufacturers from PC_Builder_Company_DM.[dbo].DimManufacturers where BK_Manifacturers = @manufacturerer)
		and SK_Components IN (select SK_Components from PC_Builder_Company_DM.[dbo].DimComponents where BK_Components = @seria);

	FETCH NEXT FROM cursor_name INTO @seria, @manufacturerer, @computername, @mydate;  
    END;

CLOSE cursor_name;
DEALLOCATE cursor_name;

