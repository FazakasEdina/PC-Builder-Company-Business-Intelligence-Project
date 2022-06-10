# PC Builder Company

Team: 
Fazakas Edina-Szylvia, 
Kiss Alpár

The company assembles computers from compontents at the request of the customer.

Steps of creating CUBE:

1.
"Source" and "Diagrams" folders:
- planning;
- creating two sources: MSSQL, ORACLE.

2.
"Source2SA" folder:
- source to Staging Area;
- we couldn't connect to Oracle with SISS project. So we export the Oracle tables in .csv files.

3.
"SA2DV" folder:
- staging Area to Data Vault;
- for Customer table we made a slowly changing dimension model.

4.
"DV2DM" folder:
- data Vault to Data Mart.

5.
"SSAS+OLAP" folder:
- from Data Mart we create cube with SSAS project.
- we also wrote some olap functions.

6.
"MDX + Reporting" folder:
- we created some reports and mdx select for decision making.
