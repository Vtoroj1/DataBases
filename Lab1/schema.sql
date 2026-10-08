CREATE TABLE faculties (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL UNIQUE,
    rector VARCHAR(100) NOT NULL
);

CREATE TABLE groups (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    faculty_id BIGINT NOT NULL REFERENCES faculties(id) ON DELETE CASCADE,
    course_number INT NOT NULL CHECK (course_number BETWEEN 1 AND 4),
    students_count BIGINT NOT NULL DEFAULT 0 CHECK (students_count >= 0),
    UNIQUE (faculty_id, name)
);

CREATE TABLE students (
    id BIGSERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    birth_date DATE NOT NULL CHECK (birth_date < CURRENT_DATE),
    email VARCHAR(100) NOT NULL UNIQUE,
    phone VARCHAR(20),
    group_id BIGINT REFERENCES groups(id) ON DELETE SET NULL
);

CREATE TABLE teachers (
    id BIGSERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    degree VARCHAR(20) NOT NULL CHECK (degree IN ('Доцент', 'Профессор')),
    department VARCHAR(100) NOT NULL
);

CREATE TABLE discipline (
    id BIGSERIAL PRIMARY KEY,
    title VARCHAR(150) NOT NULL,
    teacher_id BIGINT REFERENCES teachers(id) ON DELETE SET NULL,
    semester INT NOT NULL CHECK (semester BETWEEN 1 AND 8)
);

CREATE TABLE register (
    student_id BIGINT NOT NULL REFERENCES students(id) ON DELETE CASCADE,
    discipline_id BIGINT NOT NULL REFERENCES discipline(id) ON DELETE CASCADE,
    grade INT CHECK (grade BETWEEN 2 AND 5),
    PRIMARY KEY (student_id, discipline_id)
);