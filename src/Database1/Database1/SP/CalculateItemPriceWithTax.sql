CREATE PROCEDURE [dbo].[CalculateItemPriceWithTax]
    @ItemCode NVARCHAR(10),
    @TotalPriceWithTax INT OUTPUT
AS
BEGIN
    DECLARE @ItemPrice INT;
    DECLARE @TaxKind NVARCHAR(10);
    DECLARE @TaxRate DECIMAL(5, 2);

    -- アイテムの価格を取得
    SELECT @ItemPrice = ItemPrice, @TaxKind = ItemTaxKind
    FROM [dbo].[M_ITEM]
    WHERE ItemCode = @ItemCode;

    -- 税率を取得
    SELECT @TaxRate = CASE 
                        WHEN TaxKind = '1' THEN 0.10 
                        WHEN TaxKind = '2' THEN 0.15 
                      END
    FROM [dbo].[M_TAX]
    WHERE TaxKind = @TaxKind;

    -- 税込み価格を計算
    SET @TotalPriceWithTax = @ItemPrice + (@ItemPrice * @TaxRate);
END
GO
