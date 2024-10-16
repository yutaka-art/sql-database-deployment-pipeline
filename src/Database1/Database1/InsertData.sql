TRUNCATE TABLE [dbo].[M_ITEM]
TRUNCATE TABLE [dbo].[M_TAX]

INSERT INTO [dbo].[M_ITEM] (
    [ItemCode]
  , [ItemName]
  , [ItemPrice]
  , [ItemTaxKind]
)
VALUES
    ('0001', N'りんご', 100, 1),
    ('0002', N'みかん', 50, 1),
    ('0003', N'めろん', 650, 2)


INSERT INTO [dbo].[M_TAX] (
    [TaxKind]
  , [TaxName]
)
VALUES
    ('1', N'10%'),
    ('2', N'15%')
GO
