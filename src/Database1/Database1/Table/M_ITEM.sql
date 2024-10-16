CREATE TABLE [dbo].[M_ITEM]
(
	[ItemCode] NVARCHAR(10) NOT NULL PRIMARY KEY, 
    [ItemName] NVARCHAR(50) NULL, 
    [ItemPrice] INT NULL, 
    [ItemTaxKind] NVARCHAR NULL
)
