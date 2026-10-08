INSERT INTO faculties (name, rector) VALUES
('Факультет информационных технологий', 'Иванов И.И.'),
('Факультет экономики', 'Петров П.П.');

INSERT INTO groups (name, faculty_id, course_number, students_count) VALUES
('ИТ-101', 1, 1, 25),
('ИТ-201', 1, 2, 20),
('ЭК-101', 2, 1, 30);

INSERT INTO students (first_name, last_name, birth_date, email, phone, group_id) VALUES
('Алексей', 'Смирнов', '2005-03-15', 'smirnov@example.com', '+79161234567', 2),
('Мария', 'Иванова', '2004-07-20', 'ivanova@example.com', '+79052345678', 2),
('Дмитрий', 'Степанов', '2005-12-23', 'stepanov@example.com', NULL, 1);

INSERT INTO teachers (first_name, last_name, email, degree, department) VALUES
('Сергей', 'Петров', 'petrov@example.com', 'Профессор', 'Кафедра программирования'),
('Елена', 'Сидорова', 'sidorova@example.com', 'Доцент', 'Кафедра математики'),
('Андрей', 'Николаев', 'nikolaev@example.com', 'Доцент', 'Кафедра экономики');

INSERT INTO discipline (title, teacher_id, semester) VALUES
('Базы данных', 1, 3),
('Математический анализ', 2, 1),
('Основы экономики', 3, 2);

INSERT INTO register (student_id, discipline_id, grade) VALUES
(1, 1, 5),
(1, 2, 4),
(2, 1, 3),
(2, 3, NULL),
(3, 2, 5);