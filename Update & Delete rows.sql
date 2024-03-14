#Update & Delete rows:
SELECT * FROM student
UPDATE student 
SET major = 'Bio'
WHERE major = 'Biology' OR major = 'Chemistry'

#Alt example to alter multiple items:
UPDATE student 
SET major = 'Bio', name = 'undecided'
WHERE student_id = 1;
#you can removed the WHERE clause to update all fields.

DELETE 
FROM student 
WHERE student_id = 5 AND major = 'undecided';

#ORDER BY statement 
SELECT *
from employee
ORDER BY salary ASC/DESC;
#<> <-- means not equal.

# additional WHERE condition: WHERE name IN ('Claire', 'Gen', 'Rick');
