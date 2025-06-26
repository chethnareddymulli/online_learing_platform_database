-- Get all courses with their instructor names
SELECT c.course_id, c.course_name, u.username AS instructor_name
FROM courses c
JOIN users u ON c.instructor_id = u.user_id;

-- Get all enrollments with user progress
SELECT u.username, c.course_name, e.progress_percentage
FROM enrollments e
JOIN users u ON e.user_id = u.user_id
JOIN courses c ON e.course_id = c.course_id;

-- Get lessons of a course
SELECT lesson_title, video_url FROM lessons WHERE course_id = 1;

-- Get assessment scores of a user
SELECT a.assessment_title, s.score
FROM submissions s
JOIN assessments a ON s.assessment_id = a.assessment_id
WHERE s.user_id = 1;
