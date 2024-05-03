SELECT *
FROM student;

SELECT *
From parents;

-- Disable safe update mode
SET SQL_SAFE_UPDATES = 0;

-- Update student table
UPDATE student s
SET s.FirstParentID = (
    SELECT ParentId 
    FROM parents p1 
    WHERE p1.ParentLastName = s.StudentLastName 
    ORDER BY ParentId ASC 
    LIMIT 1
),
s.SecondParentID = (
    SELECT ParentId 
    FROM parents p2 
    WHERE p2.ParentLastName = s.StudentLastName 
    ORDER BY ParentId ASC 
    LIMIT 1,1
);

-- Re-enable safe update mode
SET SQL_SAFE_UPDATES = 1;


