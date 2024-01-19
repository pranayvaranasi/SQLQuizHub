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
VALUES (1, 2, 'SELECT DISTINCT', TRUE),
       (2, 2, 'SELECT UNIQUE', FALSE),
       (3, 2, 'SELECT DIFFERENT', FALSE),
       (4, 2, 'SELECT UNIQUE VALUES', FALSE);

INSERT INTO QuizAnswers (AnswerID, QuestionID, AnswerText, IsCorrect)
VALUES (1, 3, 'To group rows that have the same values in specified columns', TRUE),
       (2, 3, 'To order the results in ascending order', FALSE),
       (3, 3, 'To filter the results based on a condition', FALSE),
       (4, 3, 'To join multiple tables', FALSE);

INSERT INTO QuizQuestions (QuestionID, QuestionText)
VALUES (4, 'What is the purpose of the SQL JOIN clause?');

INSERT INTO QuizQuestions (QuestionID, QuestionText)
VALUES (5, 'How can you update data in a SQL database table?');



INSERT INTO QuizAnswers (AnswerID, QuestionID, AnswerText, IsCorrect)
VALUES (1, 4, 'To combine rows from two or more tables based on a related column', TRUE),
       (2, 4, 'To filter rows based on a specified condition', FALSE),
       (3, 4, 'To sort the result set in descending order', FALSE),
       (4, 4, 'To perform calculations on numeric data', FALSE);


INSERT INTO QuizAnswers (AnswerID, QuestionID, AnswerText, IsCorrect)
VALUES (1, 5, 'UPDATE table_name SET column1 = value1, column2 = value2 WHERE condition;', TRUE),
       (2, 5, 'MODIFY table_name SET column1 = value1, column2 = value2 WHERE condition;', FALSE),
       (3, 5, 'CHANGE table_name SET column1 = value1, column2 = value2 WHERE condition;', FALSE),
       (4, 5, 'ALTER table_name SET column1 = value1, column2 = value2 WHERE condition;', FALSE);
