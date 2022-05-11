Create database DBModel;
-- Batch table
CREATE TABLE batch (BatchId int primary key ,BatchName varchar(50),NoOfStudents int1,No_of_classes int);
insert into batch values (1,'B30 WE-Tamil',24,30),(2,'D20 WE-English',18,28),(3,'B30 WD-English',28,15);

-- STUDENT TABLE 
create table student (studentId int primary key,StudentName varchar(50),Email varchar(50),BatchId int,phoneNumber bigint,address varchar(255),courseName varchar(255),Duration varchar(50),foreign key (BatchId) references batch(BatchId));
insert into student values (1,'Muthu','Muthu@gmail.com',1,6374264374,'Tuticorin','Full stack','5 months'),(2,'Karthik','karthick@gmail.com',2,9486249544,'Chennai','Cyber security','5 months'),(3,'Mohan','mohan@gmail.com',3,9894056723,'Coimbatore','Full stack','3 months'),(4,'Astin','astin@gmail.com',1,9046333389,'Hyderabad','Full stack','5 months'),(5,'Abi','abi@gmail.com',1,8547529018,'Bangalore','Full stack','5 months');

-- TASK TABLE
create table task (StudentId int primary key,BatchId int,TaskName varchar(50),No_of_TaskGiven int,No_of_TaskCompleted int,No_of_TaskPending int,foreign key (BatchId) references batch(BatchId),foreign key (StudentId) references student(StudentId)); 
insert into task values (1,1,'MySQL',10,7,3),(2,2,'Python',15,14,1),(3,3,'ReactJs',12,7,5),(4,1,'MySQL',10,9,1),(5,1,'MySQL',10,10,0);


-- MENTOR TABLE
create table mentor (Id int primary key,BatchId int unique,MentorName varchar(50),No_of_classes_completed int,foreign key (BatchId) references batch(BatchId));
insert into mentor values (1,1,'Sivaranjini',30),(2,2,'Mariappan',28),(3,3,'Sanjay',15);

-- SELECT ALL VALUES FROM TABLE
select * from student;
select * from batch;
select * from task;
select * from mentor;

-- JOIN TABLES
select s.studentName,b.batchName,t.TaskName,m.mentorName,t.No_of_TaskGiven,t.No_of_TaskCompleted,t.No_of_TaskPending from student s inner join batch b on s.batchid=b.batchid inner join task t on s.studentId=t.StudentId inner join mentor m on s.batchId=m.batchId;


