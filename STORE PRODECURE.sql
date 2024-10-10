DELIMITER //

CREATE PROCEDURE RegisterUser(
    IN p_username VARCHAR(50),
    IN p_password VARCHAR(255),
    IN p_email VARCHAR(100),
    IN p_full_name VARCHAR(100),
    IN p_birth_date DATE
)

BEGIN
    INSERT INTO Users (username, password, email, full_name, birth_date)
    VALUES (p_username, p_password, p_email, p_full_name, p_birth_date);
END //

CREATE PROCEDURE AddSchedule(
    IN p_user_id INT,
    IN p_title VARCHAR(100),
    IN p_start_time DATETIME,
    IN p_end_time DATETIME
)
BEGIN
    INSERT INTO Schedules (user_id, title, start_time, end_time)
    VALUES (p_user_id, p_title, p_start_time, p_end_time);
END //

-- Procedure to add a child
CREATE PROCEDURE AddChild(
    IN p_user_id INT,
    IN p_name VARCHAR(100),
    IN p_gender ENUM('Male', 'Female', 'Other'),
    IN p_birth_date DATE
)
BEGIN
    INSERT INTO Childrens (user_id, name, gender, birth_date)
    VALUES (p_user_id, p_name, p_gender, p_birth_date);
END //

CREATE PROCEDURE AddMeal(
    IN p_user_id INT,
    IN p_name VARCHAR(100),
    IN p_category VARCHAR(50),
    IN p_description TEXT
)
BEGIN
    INSERT INTO Meals (user_id, name, category, description)
    VALUES (p_user_id, p_name, p_category, p_description);
END //

DELIMITER ;