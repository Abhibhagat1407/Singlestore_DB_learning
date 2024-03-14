
CREATE TABLE orders (
    order_id INT,
    customer_id INT,
    status VARCHAR(255),
    SHARD KEY (customer_id)
);
 
INSERT into orders values(4,1004, 'y');

SELECT
    DATABASE_NAME,
    TABLE_NAME,
    ORDINAL,
    ROWS,
    MEMORY_USE
FROM INFORMATION_SCHEMA.TABLE_STATISTICS
WHERE TABLE_NAME = 'orders';



SELECT * FROM orders ORDER BY order_id;


SELECT * FROM orders

INSERT INTO orders (order_id, customer_id, status) VALUES
(1, 1001, 'Pending'),
(2, 1002, 'Shipped'),
(3, 1003, 'Processing');

SELECT * FROM information_schema.TABLES WHERE table_name = 'orders';

SELECT TABLE_NAME, ENGINE
FROM information_schema.TABLES
WHERE TABLE_SCHEMA = 'rahul' AND TABLE_NAME = 'orders';



CREATE TABLE my_rowstore_table (
    column1 INT,
    column2 VARCHAR(50),
    column3 DATE
);
SELECT * FROM my_rowstore_table

INSERT INTO my_rowstore_table (column1, column2, column3) VALUES
(1, 'Value1', '2024-05-05'),
(2, 'Value2', '2024-05-06'),
(3, 'Value3', '2024-05-07');


show variables like '%ssl%';


show variables like '%sync_permissions%';


set global sync_permissions =on;
