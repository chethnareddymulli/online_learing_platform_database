-- sample data into users
INSERT INTO users (username, email, password, role) VALUES
(),
(),
();

-- sample courses
INSERT INTO courses (course_name, description, instructor_id) VALUES
(),
();

-- sample enrollments
INSERT INTO enrollments (user_id, course_id, progress_percentage) VALUES
(),
();

-- sample lessons
INSERT INTO lessons (course_id, lesson_title, content, video_url) VALUES
(),
(),
();

-- sample assessments
INSERT INTO assessments (lesson_id, assessment_title, max_score) VALUES
(),
(),
();

-- sample submissions
INSERT INTO submissions (assessment_id, user_id, score) VALUES
(),
(),
();
