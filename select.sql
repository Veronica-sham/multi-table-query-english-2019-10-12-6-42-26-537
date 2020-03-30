# 1.Query the existence of 1 course
select * from student_course join tudent on student_course.studentId=student.id
where courseId = 1

# 2.Query the presence of both 1 and 2 courses
select * from student_course join student on student_course.studentId=student.id
where courseId = 1 OR courseId = 2

# 3.Query the student number and student name and average score of students whose average score is 60 or higher.
select AVG(score) from student_course join student on student_course.studentId=student.id
group by studentId
HAVING AVG(score)>60

# 4.Query the SQL statement of student information that does not have grades in the student_course table
select * from student_course right join student on student_course.studentId=student.id
where studentId is NULL

# 5.Query all SQL with grades
select * from student_course right join student on student_course.studentId=student.id
where studentId is not NULL

# 6.Inquire about the information of classmates who have numbered 1 and also studied the course numbered 2
select * from student_course right join student on student_course.studentId=student.id
where studentId = 1 and courseId = 2

# 7.Retrieve 1 student score with less than 60 scores in descending order
select * from student_course right join student on student_course.studentId=student.id
where score <60
ORDER by score DESC

# 8.Query the average grade of each course. The results are ranked in descending order of average grade. When the average grades are the same, they are sorted in ascending order by course number.
select AVG(score) from student_course join student on student_course.studentId=student.id
group by courseId
order by AVG(score) DESC

# 9.Query the name and score of a student whose course name is "Math" and whose score is less than 60
select * from student_course join student on student_course.studentId=student.id join course on course.id = student_course.courseId
group by studentId
having course.Name = 'math'
