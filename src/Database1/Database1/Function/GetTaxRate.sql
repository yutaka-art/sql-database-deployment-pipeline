CREATE FUNCTION [dbo].[GetTaxRate] (@TaxKind NVARCHAR(10))
RETURNS DECIMAL(5, 2)
AS
BEGIN
    DECLARE @TaxRate DECIMAL(5, 2);

    -- 税率を取得
    SET @TaxRate = (SELECT CASE 
                            WHEN TaxKind = '1' THEN 0.10 
                            WHEN TaxKind = '2' THEN 0.15 
                          END
                    FROM [dbo].[M_TAX]
                    WHERE TaxKind = @TaxKind);

    RETURN @TaxRate;
END
GO
