# 1. Display all records from the Activity table.
SELECT * FROM Activity;

# 2. Display only ActivityName and PrizeMoney.
SELECT ActivityName, PrizeMoney FROM Activity;

# 3. Show activities with ParticipatnsNum is 12.
SELECT * FROM Activity WHERE ParticipatnsNum = 12;

# 4. Display activities with PrizeMoney greater than 10000.
SELECT * FROM Activity WHERE PrizeMoney > 10000;

# 5. Show activities where PrizeMoney is between 8000 and 12000.
SELECT * FROM Activity WHERE PrizeMoney BETWEEN 8000 AND 12000;