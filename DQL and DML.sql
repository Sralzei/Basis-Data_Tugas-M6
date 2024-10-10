-- DQL Examples

-- Get all users
SELECT * FROM Users;

-- Get schedules for a specific user
SELECT * FROM Schedules WHERE user_id = 1;

-- Get all children for a specific user
SELECT * FROM Childrens WHERE user_id = 1;

-- Get all meals for a specific user
SELECT * FROM Meals WHERE user_id = 1;

-- DML Examples

-- Register a new user
CALL RegisterUser('johndoe', 'password123', 'john@example.com', 'John Doe', '1990-01-01');

-- Add a new schedule
CALL AddSchedule(1, 'Family Dinner', '2024-10-10 18:00:00', '2024-10-10 20:00:00');

-- Add a child
CALL AddChild(1, 'Jane Doe', 'Female', '2015-05-15');

-- Add a meal
CALL AddMeal(1, 'Spaghetti Bolognese', 'Dinner', 'Classic Italian pasta dish with meat sauce');

-- Update a user's email
UPDATE Users SET email = 'newemail@example.com' WHERE user_id = 1;

-- Delete a schedule
DELETE FROM Schedules WHERE schedule_id = 1;