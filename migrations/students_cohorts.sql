CREATE TABLE cohorts (
    id SERIAL PRIMARY KEY NOT NULL,
    name VARCHAR(50) NOT NULL,
    start_date DATE,
    end_date date
);

CREATE TABLE students (
    id SERIAL PRIMARY KEY NOT NULL,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(50),
    phone VARCHAR(50),
    github VARCHAR(50),
    start_date DATE,
    end_date DATE,
    cohorts_id INTEGER REFERENCES cohorts(id) ON DELETE CASCADE
);
