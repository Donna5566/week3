SELECT
    s.student_id,
    c.checkout_id,
    e.equipment_name
FROM STUDENT s
JOIN CHECKOUT c
    ON s.student_id = c.student_id
JOIN EQUIPMENT e
    ON c.equipment_id = e.equipment_id;

