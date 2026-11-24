# Campus Equipment Checkout Database

## Part 7: Logical Model

The conceptual ER diagram is converted intorelational tables usingprimary keys, foreign keys, and MYSQL data types.

### Table 1: STUDENT

- student_id: INT, Primary Key 
- first_name: VARCHAR(50)
- last_name: VARCHAR(50) 
- email: VARCHAR(100) 
- birth_date: DATE

### Table 2: STUDENT_PHONE

- student_id: INT, Foreign Key
- phone_number: VARCHAR(20)
- Primary Key: (student_id, phone_number)

### Table 3: CATEGORY

- category_id: INT, Primary Key
- category_name: VARCHAR(100)
- description: VARCHAR(255)

### Table 4: EQUIPMENT

- equipment_id: INT, Primary Key
- category_id: INT, Foreign Key
- equipment_name: VARCHAR(100)
- serial_number: VARCHAR(100)
- purchase_date: DATE
- status: VARCHAR(50)

### Table 5: CHECKOUT

- checkout_id: INT, Primary Key
- student_id: INT, Foreign Key
- equipment_id: INT, Fooreign Key
- checkout_date:DATE
- due_date: DATE
- return_date: DATE
- return_condition: VARCHAR(100)

### Foreign Key Relationships

1. STUDENT_PHONE.student_id references STUDENT.student_id
2. EQUIPMENT.category_id references CATEGORY.category_id
3. CHECKOUT.student_id references STUDENT.student_id
4. CHECKOUT.equipment_id references EQUIPMENT.equipment_id
