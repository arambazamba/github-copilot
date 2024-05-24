-- create a table for microsoft sql server azure to store the data of the following type:
-- export type Food = {
--     name: string;
--     price: number;
--     description: string;
--     category: string;
-- };

CREATE TABLE Food (
    name VARCHAR(255),
    price DECIMAL(10, 2),
    description VARCHAR(255),
    category VARCHAR(255)
);

    -- create a view to get the food items with price less than 10

    CREATE VIEW FoodItemsUnder10 AS 
    SELECT * FROM Food WHERE price < 10;

