# Campus Equipment Checkout Database

## Part 1: Requirements Analysis

### Project Description

The purpose of this database is to help a university department manage equipment that students borrow. The system will track students, equipment, categories,due dates,checkout dates, and return information.

### Database Users

The main users of this database are university staff and students.

University staff will use the database to manage equipment, track checkouts, and monitor returns.

Students will use the equipment borrowing service to check out and also return equipment

### Business Rules

1. Each student must have a unique student ID.
2. A student can borrow multiple pieces of equipment over time.
3. Each piece of equipment must have a unique equipment ID.
4. Each piece of equipent must belong to one category.
5. A piece of equipment can only be checked out to one student at a time.
6. Every checkout should have a checkout date and also a due date.
7. A return date is recorded when equipment is returned.

### Database Questions

1. Which students borrowed equipment?
2. What equipment is currently not available?
3. What equipment is currently available?
4. How many times each equipment was borrowed?
5. Which students have returned equipment late?


## Part 2: Identify Entities

### STUDENT

The STUDENT entity represents students who are allowed to borrow equipment from the university.

Examples:
- Student 101: Maria Lopez
- Student 102: James Smith

Attributes:
- student_id
- first_name
- last_name
- email
- birth_date

### EQUIPMENT

The EQUIPMENT entity represents items that the university allow their students to borrow.

Examples:
- Equipment 201: Dell Laptop
- Equipment 202: Canon Camera

Attributes:
- equipment_id
- category_id
- equipment_name
- serial_number
- purchase_date
- status

### CATEGORY

The CATEGORY entity represents the different types of equipment available for students to borrow.

Examples:
- Category 301: Laptops
- Category 302: Cameras

Attributes:
- category_id
- category_name
- description

### CHECKOUT

The CHECKOUT entity represents each time a student borrows a piece of equipment from the university.

Examples:
- Checkout 401: Student 101 borrows Equipment 201
- Checkout 402: Student 102 borrows Equipment 202

Attributes:
- checkout_id
- student_id
- equipment_id
- checkout_date
- due_date
- return_date
- return_condition

## Part 3: Attribute Analysis

### STUDENT Attributes

- student_id: Key attribute
- name: Composite attribute
  - first_name
  - last_name
- email: Simple and single-valued
- phone_number: Multivalued attribute
- birth_date: Simple and single-valued
- age: Derived from birth_date

### EQUIPMENT Attributes

- equipment_id: Key attribute
- equipment_name: Simple and single-valued
- serial_number: Simple and single-valued
- category_id: Foreign key attribute
- purchase_date: Simple and single-valued
- status: Simple and single-valued
- equipment_age: Derived from purchase_date

### CATEGORY Attributes

- category_id: Key attribute
- category_name: Simple and single-valued
- description: Simple and single-valued

### CHECKOUT Attributes

- checkout_id: Key attribute
- student_id: Foreign key attribute
- equipment_id: Foreign key attribute
- checkout_date: Simple and single-valued
- due_date: Simple and single-valued
- return_date: Simple and single-valued
- return_condition: Simple and single-valued
- days_overdue: Derived from due_date and return_date

## Part 4: Relationships

### Relationship 1: CATEGORY classifies EQUIPMENT

- Entities: CATEGORY and EQUIPMENT
- Degree: Binary
- Cardinality: 1:N
- Participation: EQUIPMENT = Total

Explanation:
One category can contain many pieces of equipment.  Each piece of equipment belongs to only one category. Every equipment item must have a category.

### Relationship 2: STUDENT participates in CHECKOUT

- Entities: STUDENT and CHECKOUT
- Degree: Binary
- Cardinality: 1:N
- Participation: CHECKOUT = Total

Explanation:
One student can have multiple checkouts over time. Each checkout belongs to one student. Every checkout must be connected to one student.

### Relationship 3: EQUIPMENT participates in CHECKOUT

- Entities: EQUIPMENT and CHECKOUT
- Degree: Binary
- Cardinality: 1:N
- Participation: CHECKOUT = Total

Explanation:
One piece of equipment can be checked out multiple times over time. Each checkout records one piece of equipment. Every checkout must be connected to an equipment item.

## Part 5: Participation Constraints

### CATEGORY and EQUIPMENT
- CATEGORY: Partial participation
- EQUIPMENT: Total participation

Explanation:
A category can exist without equipment. Every equipment item must belong to a category.

### STUDENT and CHECKOUT
- STUDENT: Partial participation
- CHECKOUT: Total participation

Explanation: A student can exist without borrowing equipment. Every checkout must belong to a student.

### EQUIPMENT and CHECKOUT 
- EQUIPMENT: Partial participation
- CHECKOUT: Total participation

Explanation:
Equipment can exist without being checked out. Every checkout must involve an equipment item.

### Minimum and Maximum Participation

CATEGORY (0,N) -------- EQUIPMENT (1,1)
A category can contain zero or many equipment items. Each equipment item must belong to exactly one category.

STUDENT (0,N) -------- CHECKOUT (1,1)
A student can have zero or many checkouts over time. Each checkout must belong to exactly one student.

EQUIPMENT (0,N) -------- CHECKOUT (1,1)

An equipment item can have zero or manycheckouts overtime. Each checkout must involve exactly one equipment item.

