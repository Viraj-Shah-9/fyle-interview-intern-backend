SELECT 
    t.id AS teacher_id, 
    COUNT(a.id) AS count_A_assignments 
FROM 
    teachers t 
LEFT JOIN 
    assignments a ON t.id = a.teacher_id 
WHERE 
    a.grade = 'A' 
    AND a.state = 'GRADED' 
GROUP BY 
    t.id 
ORDER BY 
    count_A_assignments DESC 
LIMIT 1;
