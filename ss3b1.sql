CREATE TABLE PRODUCTS(
ProductID INT PRIMARY KEY,
ProductName VARCHAR(100),
Category VARCHAR(50),
OriginalPrice DECIMAL(18,2)
);

INSERT INTO PRODUCTS(ProductID,ProductName,Category,OriginalPrice)
VALUES
(1,'iPhone 15','Electronics',20000000),
(2,'Samsung Refrigerator','Electronics',15000000),
(3,'Water Spinach','Food',10000),
(4,'Filtered Fresh Milk 4','Food',28000);

-- Phan tich:
-- Input: bang PRODUCTS
-- Output: lay ProductName,OriginalPrice cua san pham Electronics sau khi giam gia
-- Khong dung SELECT * vi lay du du lieu, ton tai nguyen

-- Logic:
-- 1.Loc Category='Electronics'
-- 2.Giam gia 10% => OriginalPrice=OriginalPrice*0.9
-- 3.Hien thi ket qua sau khi giam

SELECT ProductName,OriginalPrice
FROM PRODUCTS
WHERE Category='Electronics';

UPDATE PRODUCTS
SET OriginalPrice=OriginalPrice*0.9
WHERE Category='Electronics';

SELECT ProductName,OriginalPrice
FROM PRODUCTS
WHERE Category='Electronics';
