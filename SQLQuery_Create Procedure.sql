CREATE PROCEDURE summary_order_status
    @StatusID INT
AS
BEGIN
    SELECT
        f.OrderID,
        c.CustomerName,
        p.ProductName,
        f.Quantity,
        s.StatusOrder
    FROM
        FactSalesOrder f
        INNER JOIN DimCustomer c ON f.CustomerID = c.CustomerID
        INNER JOIN DimProduct p ON f.ProductID = p.ProductID
        INNER JOIN DimStatusOrder s ON f.StatusID = s.StatusID
    WHERE
        s.StatusID = @StatusID;
END