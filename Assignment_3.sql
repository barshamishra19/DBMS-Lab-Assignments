-- =========================================================
-- DATABASE MANAGEMENT SYSTEM LAB - ASSIGNMENT 3
-- =========================================================

-- 1. Retrieve the Name of Book and Cost who has Maximum cost.
SELECT BOOK_NAME, COST FROM BOOKS_1151 WHERE COST = (SELECT MAX(COST) FROM BOOKS_1151);

-- 2. Calculate the Minimum cost, Average cost and Total cost value in BOOKS table and Rename the resulting attributes.
SELECT MIN(COST) AS Minimum_Cost, AVG(COST) AS Average_Cost, SUM(COST) AS Total_Cost FROM BOOKS_1151;

-- 3. Retrieve the Name and ID of Members who’s issued book between 26th January 2011 and 14th April 2011.


-- 4. Retrieve Book Name, Author Name and Category whose Category is not ‘OTHERS’.
SELECT BOOK_NAME, AUTHOR_NAME, CATEGORY FROM BOOKS_1151 WHERE CATEGORY != 'OTHERS';

-- 5. A. Retrieve the Book name and Author Name where –
-- a. 5th letter of the Author name is ‘t’.
SELECT BOOK_NAME, AUTHOR_NAME FROM BOOKS_1151 WHERE AUTHOR_NAME LIKE '____t%';

-- b. Author name starts with ‘S’.
SELECT BOOK_NAME, AUTHOR_NAME FROM BOOKS_1151 WHERE AUTHOR_NAME LIKE 'S%';

-- c. Author name starts with ‘S’ and contains at least one letter after that.
SELECT BOOK_NAME, AUTHOR_NAME FROM BOOKS_1151 WHERE AUTHOR_NAME LIKE 'S_%';

-- d. Author name ends with the letter ‘a’.
SELECT BOOK_NAME, AUTHOR_NAME FROM BOOKS_1151 WHERE AUTHOR_NAME LIKE '%a';

-- e. 3rd and 5th letters of the Author name is ‘a’.
SELECT BOOK_NAME, AUTHOR_NAME FROM BOOKS_1151 WHERE AUTHOR_NAME LIKE '__a_a%';

-- f. 2nd last letter of the author name is ‘a’.
SELECT BOOK_NAME, AUTHOR_NAME FROM BOOKS_1151 WHERE AUTHOR_NAME LIKE '%a_';

-- g. Author name starts with ‘D’ and ends with ‘e’.
SELECT BOOK_NAME, AUTHOR_NAME FROM BOOKS_1151 WHERE AUTHOR_NAME LIKE 'D%e';

-- 5. B. List all the Members whose name –
-- h. Starts with S.
SELECT MEMBER_NAME FROM MEMBER_1151 WHERE MEMBER_NAME LIKE 'S%';

-- i. Starts with S or A and contains letter T in it.
SELECT MEMBER_NAME FROM MEMBER_1151 WHERE (MEMBER_NAME LIKE 'S%' OR MEMBER_NAME LIKE 'A%') AND MEMBER_NAME LIKE '%T%';

-- 5. C. List all the books that contain the word ‘SQL’ in the name of the book.
SELECT BOOK_NAME FROM BOOKS_1151 WHERE BOOK_NAME LIKE '%SQL%';

-- 6. How many Books are available whose Cost is greater than 350.
SELECT COUNT(*) FROM BOOKS_1151 WHERE COST > 350;

-- 7. How many different Authors name are available in the BOOKS table.
SELECT COUNT(DISTINCT AUTHOR_NAME) FROM BOOKS_1151;

-- 8. Calculate the following Numeric functions:
-- a. What is the absolute value of -167.
SELECT ABS(-167) FROM DUAL;

-- b. Calculate 8^6.
SELECT POWER(8, 6) FROM DUAL;

-- c. Round up to 2 decimal points (134.56789).
SELECT ROUND(134.56789, 2) FROM DUAL;

-- d. What is the square root of 144.
SELECT SQRT(144) FROM DUAL;

-- e. Floor and Ceil value of 13.15.
SELECT FLOOR(13.15), CEIL(13.15) FROM DUAL;

-- 9. Extract Year, Month, Day from System Date.
SELECT EXTRACT(YEAR FROM SYSDATE) AS Year, EXTRACT(MONTH FROM SYSDATE) AS Month, EXTRACT(DAY FROM SYSDATE) AS Day FROM DUAL;

-- 10. What is the greatest value between 4, 5 and 17.
SELECT GREATEST(4, 5, 17) FROM DUAL;

-- 11. What is the Least value between '4', '5' and '17' and Express why resulting value of last two queries are same.
SELECT LEAST('4', '5', '17') FROM DUAL;

-- 12. Extract 4 letters from 3th position of this word 'INFOSYS'.
SELECT SUBSTR('INFOSYS', 3, 4) FROM DUAL;

-- 13. What is the ASCII value of 'a' and 'S'.
SELECT ASCII('a'), ASCII('S') FROM DUAL;

-- 14. What is Length of this word 'INFOSYS' AND change 'S' with 'T'.
SELECT LENGTH('INFOSYS'), REPLACE('INFOSYS', 'S', 'T') FROM DUAL;

-- 15. Retrieve the Names and Address of the Members who belong to Kolkata.
SELECT MEMBER_NAME, MEMBER_ADDRESS FROM MEMBER_1151 WHERE MEMBER_ADDRESS = 'KOLKATA';

-- 16. Retrieve the Name of Books, where Cost prices are between 300 and 500.
SELECT BOOK_NAME FROM BOOKS_1151 WHERE COST BETWEEN 300 AND 500;

-- 17. List the Name of the Members whose Membership type is “HALF YEARLY”.
SELECT MEMBER_NAME FROM MEMBER_1151 WHERE MEMBERSHIP_TYPE = 'HALF_YEARLY';

-- 18. List the Name of the Members who open their accounts in the year 2011.
SELECT MEMBER_NAME FROM MEMBER_1151 WHERE ACC_OPEN_DATE BETWEEN '01-JAN-11' AND '31-DEC-11';

