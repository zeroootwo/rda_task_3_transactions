USE ShopDB;

INSERT INTO Orders(CustomerID, `Date`)
    VALUES ('1', '2026-07-20');

START TRANSACTION;
UPDATE Products SET WarehouseAmount = WarehouseAmount - 1 WHERE ID = '1';
INSERT INTO OrderItems(OrderID, ProductID)
    VALUES ('1', '1');
COMMIT;