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

    -- create a stored procedure to get all the food items in a certain category

    CREATE PROCEDURE GetFoodItemsByCategory
    @category VARCHAR(255)
    AS
    BEGIN
        SELECT * FROM Food WHERE category = @category;
    END;

    -- create a stored procedure to insert a new food item

    CREATE PROCEDURE InsertFoodItem
    @name VARCHAR(255),
    @price DECIMAL(10, 2),
    @description VARCHAR(255),
    @category VARCHAR(255)
    AS
    BEGIN
        INSERT INTO Food (name, price, description, category) VALUES (@name, @price, @description, @category);
    END;

    -- generate some sample data to insert into the table using the stored procedure

    EXEC InsertFoodItem 'Pizza', 9.99, 'Delicious pizza with cheese and pepperoni', 'Italian';
    EXEC InsertFoodItem 'Burger', 5.99, 'Juicy burger with lettuce and tomato', 'American';
    EXEC InsertFoodItem 'Sushi', 12.99, 'Fresh sushi with salmon and avocado', 'Japanese';
    EXEC InsertFoodItem 'Taco', 3.99, 'Spicy taco with beef and salsa', 'Mexican';