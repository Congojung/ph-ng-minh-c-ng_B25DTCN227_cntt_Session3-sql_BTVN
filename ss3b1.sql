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

-- Phan tich loi:
-- Cau UPDATE ban dau: UPDATE PRODUCTS SET OriginalPrice=OriginalPrice*0.9;
-- Loi o day la thieu WHERE nen se giam gia tat ca san pham (ca Food)
-- => Gay sai du lieu (bay du lieu), khong dung yeu cau chi giam Electronics

-- Logic dung:
-- 1. Chi loc san pham Electronics
-- 2. Moi giam 10%
-- 3. Khong duoc update toan bo bang

-- Kiem tra truoc khi update
SELECT ProductName,OriginalPrice
FROM PRODUCTS
WHERE Category='Electronics';

-- Update dung
UPDATE PRODUCTS
SET OriginalPrice=OriginalPrice*0.9
WHERE Category='Electronics';

-- Kiem tra lai sau khi update
SELECT ProductName,OriginalPrice
FROM PRODUCTS;
