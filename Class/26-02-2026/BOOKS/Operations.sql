# 1. To List the names from the books of Text type.
SELECT Book_Name FROM BOOKS WHERE Type='Text';

# 2. To display the names and price from books in ascending order of their price.
SELECT Book_Name, Price FROM BOOKS ORDER BY Price ASC;

# 3. To increaase the price of all the books of EPB publishers by 50.
UPDATE BOOKS SET Price = Price + 50 WHERE Publisher = 'EPB';

# 4. To display the Book_Name, Quantity and Price for all C++ books.
SELECT Book_Name, Quantity, Price FROM BOOKS WHERE Book_Name LIKE '%C++%';