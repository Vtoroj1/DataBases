-- Нарушение UNIQUE: email студента уже существует
INSERT INTO students (first_name, last_name, birth_date, email)
VALUES ('Пётр', 'Сидоров', '2005-01-01', 'smirnov@example.com');

-- Нарушение CHECK: номер курса группы вне диапазона 1-4
INSERT INTO groups (name, faculty_id, course_number, students_count)
VALUES ('ИТ-301', 1, 9, 10);

-- Нарушение CHECK: дата рождения в будущем
INSERT INTO students (first_name, last_name, birth_date, email)
VALUES ('Анна', 'Петрова', '2027-01-01', 'petrova@example.com');

-- Нарушение CHECK: оценка вне диапазона 2-5
INSERT INTO register (student_id, course_id, grade)
VALUES (1, 3, 6);

-- Нарушение составного UNIQUE: группа с таким именем уже есть на факультете
INSERT INTO groups (name, faculty_id, course_number, students_count)
VALUES ('ИТ-101', 1, 2, 15);

-- Нарушение CHECK: несуществующее ученое звание
UPDATE teachers
SET degree = 'Студент' WHERE department = 'Кафедра экономики';