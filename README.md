# Online Learning Platform Database Project 📚💻

## 👨‍🎓 About the Project

This is a student project that demonstrates how to design and implement a **relational database** for an **Online Learning Platform** using **SQL (MariaDB)**.

The goal of this project is to manage users, courses, instructors, enrollments, progress tracking, and feedback in an organized and efficient way.

## 📂 Project Structure

- `ER Diagram`: Visual representation of all database tables and their relationships.
- `DDL Scripts`: SQL scripts to create all tables and constraints.
- `DML Scripts`: SQL scripts to insert sample data into the tables.
- `Queries.sql`: Collection of useful SQL queries for analytics, reporting, and user interaction.

## 🧱 Database Features

- **User Management**: Students and instructors
- **Course Catalog**: Courses with categories and descriptions
- **Enrollment System**: Tracks which student is enrolled in which course
- **Progress Tracking**: Stores completion percentages for each course
- **Feedback System**: Students can submit feedback for completed courses

## 🛠 Technologies Used

- MariaDB / MySQL
- SQL (DDL, DML, JOINs, etc.)
- Linux Terminal (Parrot OS)
- Git & GitHub for version control

## 📘 How to Use

1. Clone the repo:
   ```bash
   git clone https://github.com/chethnareddymulli/online_learing_platform_database.git


Student
    Integer student_id PK
    String name
    String email
    String contact_number

Enrollment
    Integer enrollment_id PK
    Integer student_id FK
    Integer course_id FK
    Date enrollment_date

Course
    Integer course_id PK
    String title
    String description
    Integer instructor_id FK

Instructor
    Integer instructor_id PK
    String name
    String expertise
    String email
    String contact_number

Progress
    Integer progress_id PK
    Integer student_id FK
    Integer course_id FK
    Integer percentage_completed
    Date last_updated

Feedback
    Integer feedback_id PK
    Integer course_id FK
    Integer student_id FK
    Integer rating
    String comments
    Date feedback_date

Student --(enrolls in)--> Enrollment
Enrollment --(enrolled in)--> Course
Course --(taught by)--> Instructor
Student --(has progress in)--> Progress
Progress --(for course)--> Course
Student --(provides feedback on)--> Feedback
Feedback --(about course)--> Course
