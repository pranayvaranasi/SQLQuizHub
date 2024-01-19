-- Create tables for questions and answers

CREATE TABLE QuizQuestions (
    QuestionID INT PRIMARY KEY,
    QuestionText VARCHAR(255)
);

CREATE TABLE QuizAnswers (
    AnswerID INT PRIMARY KEY,
    QuestionID INT,
    AnswerText VARCHAR(255),
    IsCorrect BOOLEAN,
    FOREIGN KEY (QuestionID) REFERENCES QuizQuestions(QuestionID)
);

-- Insert questions and answers

INSERT INTO QuizQuestions (QuestionID, QuestionText)
VALUES (1, 'What is the command to list all tables in a SQL database?');

INSERT INTO QuizAnswers (AnswerID, QuestionID, AnswerText, IsCorrect)
VALUES (1, 1, 'SHOW TABLES;', TRUE),
       (2, 1, 'LIST TABLES;', FALSE),
       (3, 1, 'DISPLAY TABLES;', FALSE),
       (4, 1, 'GET TABLES;', FALSE);

INSERT INTO QuizQuestions (QuestionID, QuestionText)
VALUES (2, 'Which SQL keyword is used to retrieve unique values from a database table?');

INSERT INTO QuizQuestions (QuestionID, QuestionText)
VALUES (3, 'What is the purpose of the GROUP BY clause in SQL?');

INSERT INTO QuizAnswers (AnswerID, QuestionID, AnswerText, IsCorrect)
VALUES (5, 2, 'SELECT DISTINCT', TRUE),
       (6, 2, 'SELECT UNIQUE', FALSE),
       (7, 2, 'SELECT DIFFERENT', FALSE),
       (8, 2, 'SELECT UNIQUE VALUES', FALSE);

INSERT INTO QuizAnswers (AnswerID, QuestionID, AnswerText, IsCorrect)
VALUES (9, 3, 'To group rows that have the same values in specified columns', TRUE),
       (10, 3, 'To order the results in ascending order', FALSE),
       (11, 3, 'To filter the results based on a condition', FALSE),
       (12, 3, 'To join multiple tables', FALSE);

INSERT INTO QuizQuestions (QuestionID, QuestionText)
VALUES (4, 'What is the purpose of the SQL JOIN clause?');

INSERT INTO QuizQuestions (QuestionID, QuestionText)
VALUES (5, 'How can you update data in a SQL database table?');



INSERT INTO QuizAnswers (AnswerID, QuestionID, AnswerText, IsCorrect)
VALUES (13, 4, 'To combine rows from two or more tables based on a related column', TRUE),
       (14, 4, 'To filter rows based on a specified condition', FALSE),
       (15, 4, 'To sort the result set in descending order', FALSE),
       (16, 4, 'To perform calculations on numeric data', FALSE);


INSERT INTO QuizAnswers (AnswerID, QuestionID, AnswerText, IsCorrect)
VALUES (17, 5, 'UPDATE table_name SET column1 = value1, column2 = value2 WHERE condition;', TRUE),
       (18, 5, 'MODIFY table_name SET column1 = value1, column2 = value2 WHERE condition;', FALSE),
       (19, 5, 'CHANGE table_name SET column1 = value1, column2 = value2 WHERE condition;', FALSE),
       (20, 5, 'ALTER table_name SET column1 = value1, column2 = value2 WHERE condition;', FALSE);
