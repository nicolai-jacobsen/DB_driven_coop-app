CREATE DATABASE neu_coop_db;
GRANT ALL PRIVILEGES ON neu_coop_db.* TO 'webapp'@'%';
FLUSH PRIVILEGES;

USE neu_coop_db;

Create table Students (
	First_name VARCHAR(20),
	Last_name VARCHAR(20),
	Email VARCHAR(50),
	NU_ID VARCHAR(9) PRIMARY KEY,
	Credits INT,
	Major VARCHAR(41),
	Minors VARCHAR(25),
	GPA DECIMAL(3,2),
	Coop_cycle VARCHAR(6),
	Application_status VARCHAR(14),
	Year VARCHAR(3)
);
insert into Students (First_name, Last_name, Email, NU_ID, Credits, Major, Minors, GPA, Coop_cycle, Application_status, Year) values ('Angie', 'Aulsford', 'aaulsford0@foxnews.com', '002181021', 52, 'Business Administration', 'Emerging Markets', 3.92, 'Spring', 'Applying', '4th');
insert into Students (First_name, Last_name, Email, NU_ID, Credits, Major, Minors, GPA, Coop_cycle, Application_status, Year) values ('Cart', 'Rigard', 'crigard1@pagesperso-orange.fr', '009762454', 69, 'History', 'Financial Technology', 2.65, 'Spring', 'Accepted Offer', '4th');
insert into Students (First_name, Last_name, Email, NU_ID, Credits, Major, Minors, GPA, Coop_cycle, Application_status, Year) values ('Sharla', 'Smidmor', 'ssmidmor2@soup.io', '006909902', 75, 'Data Science & Business Administration', 'Accounting', 2.6, 'Fall', 'Not Applying', '5th');
insert into Students (First_name, Last_name, Email, NU_ID, Credits, Major, Minors, GPA, Coop_cycle, Application_status, Year) values ('Ilyse', 'Kettell', 'ikettell3@behance.net', '000543899', 51, 'Civil Engineering', 'Emerging Markets', 3.14, 'Fall', 'Applying', '2nd');
insert into Students (First_name, Last_name, Email, NU_ID, Credits, Major, Minors, GPA, Coop_cycle, Application_status, Year) values ('Marthena', 'Datte', 'mdatte4@etsy.com', '001952421', 39, 'Economics & Mathematics', 'Consulting', 2.86, 'Fall', 'Accepted Offer', '4th');
insert into Students (First_name, Last_name, Email, NU_ID, Credits, Major, Minors, GPA, Coop_cycle, Application_status, Year) values ('Marcellus', 'Cleyne', 'mcleyne5@dropbox.com', '002377734', 74, 'Computer Science & Economics', 'Finance', 3.86, 'Spring', 'Applying', '2nd');


create table Completed_courses (
	Student_id VARCHAR(9),
	Course_id VARCHAR(8),
	Number_grade DECIMAL(5,2),
    Letter_grade VARCHAR(2),
    PRIMARY KEY (Student_id, Course_id)
);
insert into Completed_courses (Student_id, Course_id, Number_grade, Letter_grade) values ('002181021', 'DS3500', 98.98, 'A');
insert into Completed_courses (Student_id, Course_id, Number_grade, Letter_grade) values ('002181021', 'DS2500', 71.22, 'C-');
insert into Completed_courses (Student_id, Course_id, Number_grade, Letter_grade) values ('002181021', 'ENTR2301', 74.03, 'C');
insert into Completed_courses (Student_id, Course_id, Number_grade, Letter_grade) values ('002181021', 'INTB1800', 97.0, 'A');
insert into Completed_courses (Student_id, Course_id, Number_grade, Letter_grade) values ('009762454', 'FINA2201', 69.96, 'D+');
insert into Completed_courses (Student_id, Course_id, Number_grade, Letter_grade) values ('009762454', 'CS1800', 78.95, 'C+');
insert into Completed_courses (Student_id, Course_id, Number_grade, Letter_grade) values ('009762454', 'CS1200', 72.46, 'A-');
insert into Completed_courses (Student_id, Course_id, Number_grade, Letter_grade) values ('009762454', 'DS2000', 56.32, 'E');
insert into Completed_courses (Student_id, Course_id, Number_grade, Letter_grade) values ('006909902', 'CS1800', 81.94, 'B-');
insert into Completed_courses (Student_id, Course_id, Number_grade, Letter_grade) values ('006909902', 'CS1200', 70.3, 'C-');
insert into Completed_courses (Student_id, Course_id, Number_grade, Letter_grade) values ('006909902', 'FINA2201', 68.85, 'D+');
insert into Completed_courses (Student_id, Course_id, Number_grade, Letter_grade) values ('000543899', 'DS3500', 68.52, 'D');
insert into Completed_courses (Student_id, Course_id, Number_grade, Letter_grade) values ('000543899', 'CS1200', 93.6, 'A-');
insert into Completed_courses (Student_id, Course_id, Number_grade, Letter_grade) values ('000543899', 'INTB2200', 94.79, 'A');
insert into Completed_courses (Student_id, Course_id, Number_grade, Letter_grade) values ('000543899', 'FINA2201', 83.09, 'B');
insert into Completed_courses (Student_id, Course_id, Number_grade, Letter_grade) values ('001952421', 'ENGW1111', 68.93, 'D+');
insert into Completed_courses (Student_id, Course_id, Number_grade, Letter_grade) values ('001952421', 'FINA2201', 55.54, 'E');
insert into Completed_courses (Student_id, Course_id, Number_grade, Letter_grade) values ('001952421', 'CS3200', 61.2, 'D-');
insert into Completed_courses (Student_id, Course_id, Number_grade, Letter_grade) values ('001952421', 'DS3500', 64.28, 'D');
insert into Completed_courses (Student_id, Course_id, Number_grade, Letter_grade) values ('002377734', 'INTB2200', 74.77, 'C');
insert into Completed_courses (Student_id, Course_id, Number_grade, Letter_grade) values ('002377734', 'DS2000', 82.95, 'B');
insert into Completed_courses (Student_id, Course_id, Number_grade, Letter_grade) values ('002377734', 'DS3500', 94.93, 'A');
insert into Completed_courses (Student_id, Course_id, Number_grade, Letter_grade) values ('002377734', 'ENGW1111', 74.03, 'C');

CREATE TABLE Department (
	Dept_id VARCHAR(4) PRIMARY KEY,
	Name VARCHAR(50),
	College VARCHAR(34)
);
insert into Department (Dept_id, Name, College) values ('0038', 'Data Science', 'Khoury College of Computer Science');
insert into Department (Dept_id, Name, College) values ('0016', 'International Business', 'DAmore McKim School of Business');
insert into Department (Dept_id, Name, College) values ('0092', 'Physics', 'College of Engineering');
insert into Department (Dept_id, Name, College) values ('0055', 'Dance', 'College of Arts');
insert into Department (Dept_id, Name, College) values ('0095', 'Computer Engineering', 'Khoury College of Computer Science');
insert into Department (Dept_id, Name, College) values ('0022', 'Finance', 'DAmore McKim School of Business');
insert into Department (Dept_id, Name, College) values ('0026', 'Civil Engineering', 'College of Engineering');
insert into Department (Dept_id, Name, College) values ('0056', 'Accounting', 'DAmore McKim School of Business');
insert into Department (Dept_id, Name, College) values ('0019', 'English Writing', 'College of Writing');
insert into Department (Dept_id, Name, College) values ('0098', 'Accounting', 'DAmore Mckim School of Business');
insert into Department (Dept_id, Name, College) values ('0086', 'Database', 'Khoury College of Computer Science');
insert into Department (Dept_id, Name, College) values ('0040', 'Innovation', 'DAmore Mckim School of Business');
insert into Department (Dept_id, Name, College) values ('0007', 'Computer Science', 'Khoury College of Computer Science');
insert into Department (Dept_id, Name, College) values ('0065', 'Business Administration', 'DAmore McKim School of Business');
insert into Department (Dept_id, Name, College) values ('0085', 'History', 'College of History');
insert into Department (Dept_id, Name, College) values ('0024', 'Economics', 'DAmore McKim School of Business');

CREATE TABLE Courses (
	course_id VARCHAR(8) PRIMARY KEY,
	Name VARCHAR(27),
	Description TEXT,
	Credits INT,
	Skills TINYTEXT,
	Dept_id VARCHAR(4)
);
insert into Courses (course_id, Name, Description, Credits, Skills, Dept_id) values ('FINA2201', 'Financial Management', null, 4, 'Erosion Control', '0022');
insert into Courses (course_id, Name, Description, Credits, Skills, Dept_id) values ('ACCT1201', 'Financial Accounting', null, 4, 'Environmental Impact Assessment', '0056');
insert into Courses (course_id, Name, Description, Credits, Skills, Dept_id) values ('ENGW1111', 'English Writing', null, 4, 'Single Family Homes', '0019');
insert into Courses (course_id, Name, Description, Credits, Skills, Dept_id) values ('CS3200', 'Database Design', null, 4, 'IT Governance', '0086');
insert into Courses (course_id, Name, Description, Credits, Skills, Dept_id) values ('ENTR2301', 'Innovation', null, 4, 'CND', '0040');
insert into Courses (course_id, Name, Description, Credits, Skills, Dept_id) values ('DS2000', 'Intro to Data Science', null, 4, 'Location Intelligence', '0038');
insert into Courses (course_id, Name, Description, Credits, Skills, Dept_id) values ('DS2500', 'Intermediate Data Science', null, 4, 'Otoplasty', '0038');
insert into Courses (course_id, Name, Description, Credits, Skills, Dept_id) values ('DS3000', 'Python for Data Science', null, 4, 'SMED', '0038');
insert into Courses (course_id, Name, Description, Credits, Skills, Dept_id) values ('DS3500', 'Advanced Data Science', null, 4, 'Digital Printing', '0038');
insert into Courses (course_id, Name, Description, Credits, Skills, Dept_id) values ('CS1200', 'First-year computer science', null, 4, 'CTA', '0007');
insert into Courses (course_id, Name, Description, Credits, Skills, Dept_id) values ('CS1800', 'Discrete Structures', null, 4, 'Writing', '0007');
insert into Courses (course_id, Name, Description, Credits, Skills, Dept_id) values ('INTB1800', 'International Business', null, 4, 'NFL', '0016');
insert into Courses (course_id, Name, Description, Credits, Skills, Dept_id) values ('INTB2200', 'Becoming a global Manager', null, 4, 'SWIFT Messaging', '0016');


create table Majors (
	Name VARCHAR(38) PRIMARY KEY,
	Department_id VARCHAR(4)
);
insert into Majors (Name, Department_id) values ('Business Administration', '0065');
insert into Majors (Name, Department_id) values ('History', '0085');
insert into Majors (Name, Department_id) values ('Data Science & Business Administration', '0038');
insert into Majors (Name, Department_id) values ('Civil Engineering', '0026');
insert into Majors (Name, Department_id) values ('Economics & Mathematics', '0024');
insert into Majors (Name, Department_id) values ('Computer Science & Economics', '0007');

create table Minors (
	Name VARCHAR(20) PRIMARY KEY,
	Department_id VARCHAR(4)
);
insert into Minors (Name, Department_id) values ('Emerging Markets', '0016');
insert into Minors (Name, Department_id) values ('Financial Technology', '0022');
insert into Minors (Name, Department_id) values ('Accounting', '0056');
insert into Minors (Name, Department_id) values ('Consulting', '0065');
insert into Minors (Name, Department_id) values ('Finance', '0022');

create table Coop_offers (
	coop_id VARCHAR(9) PRIMARY KEY,
	Position VARCHAR(50),
	Pref_majors VARCHAR(38),
	Pref_skills VARCHAR(50),
	Skills VARCHAR(50),
	Description TEXT,
	Min_GPA DECIMAL(2,1),
	Start_date DATE,
	End_date DATE,
	Company_id VARCHAR(7)
);
insert into Coop_offers (coop_id, Position, Pref_majors, Pref_skills, Skills, Description, Min_GPA, Start_date, End_date, Company_id) values ('007879274', 'Civil Engineer', 'Economics & Mathematics', 'Kaizen', 'CWSP', null, 2.8, '2023-01-23', '2023-06-16', '0038685');
insert into Coop_offers (coop_id, Position, Pref_majors, Pref_skills, Skills, Description, Min_GPA, Start_date, End_date, Company_id) values ('000369752', 'Office Assistant III', 'Data Science & Business Administration', 'Ice Hockey', 'FHA', null, 2.2, '2023-01-20', '2023-6-29', '0038685');
insert into Coop_offers (coop_id, Position, Pref_majors, Pref_skills, Skills, Description, Min_GPA, Start_date, End_date, Company_id) values ('001429665', 'Account Executive', 'Civil Engineering', 'EBITDA', 'Year End Accounts', null, 3.0, '2023-01-22', '2023-06-13', '0012892');
insert into Coop_offers (coop_id, Position, Pref_majors, Pref_skills, Skills, Description, Min_GPA, Start_date, End_date, Company_id) values ('000702862', 'Desktop Support Technician', 'Economics & Mathematics', 'Laboratory Skills', 'American English', null, 2.1, '2023-01-16', '2023-06-25', '0012892');
insert into Coop_offers (coop_id, Position, Pref_majors, Pref_skills, Skills, Description, Min_GPA, Start_date, End_date, Company_id) values ('003450880', 'Computer Systems Analyst III', 'Economics & Mathematics', 'Financial Planning', 'Eye Treatments', null, 2.8, '2023-01-30', '2023-06-30', '0067558');
insert into Coop_offers (coop_id, Position, Pref_majors, Pref_skills, Skills, Description, Min_GPA, Start_date, End_date, Company_id) values ('007990813', 'VP Product Management', 'Economics & Mathematics', 'UTRAN', 'GSM-R', null, 2.7, '2023-01-13', '2023-06-19', '0067558');
insert into Coop_offers (coop_id, Position, Pref_majors, Pref_skills, Skills, Description, Min_GPA, Start_date, End_date, Company_id) values ('000987307', 'Web Developer I', 'Data Science & Business Administration', 'RCP', 'Sales Tax', null, 3.7, '2023-01-26', '2023-06-22', '0017311');
insert into Coop_offers (coop_id, Position, Pref_majors, Pref_skills, Skills, Description, Min_GPA, Start_date, End_date, Company_id) values ('002908834', 'Web Developer IV', 'Computer Science & Economics', 'Gymnastics', 'Board Development', null, 2.1, '2023-01-10', '2023-06-24', '0017311');
insert into Coop_offers (coop_id, Position, Pref_majors, Pref_skills, Skills, Description, Min_GPA, Start_date, End_date, Company_id) values ('003678936', 'Help Desk Operator', 'Computer Science & Economics', 'FBD', 'Value Engineering', null, 3.6, '2023-01-26', '2026-06-23', '0039908');
insert into Coop_offers (coop_id, Position, Pref_majors, Pref_skills, Skills, Description, Min_GPA, Start_date, End_date, Company_id) values ('002309710', 'Engineer III', 'Data Science & Business Administration', 'JDE CNC', 'BSF', null, 3.0, '2023-01-08', '2023-06-02', '0039908');

create table Applied (
	Student_id VARCHAR(9),
	Coop_id VARCHAR(9),
	Date DATE,
	Status VARCHAR(19),
	PRIMARY KEY (Student_id, Coop_id)
);
insert into Applied (Student_id, Coop_id, Date, Status) values ('002181021', '00990234', '2023-01-06', 'Denied Offer');
insert into Applied (Student_id, Coop_id, Date, Status) values ('002181021', '07366168', '2023-01-08', 'Interview completed');
insert into Applied (Student_id, Coop_id, Date, Status) values ('002181021', '03400884', '2023-01-05', 'Denied Offer');
insert into Applied (Student_id, Coop_id, Date, Status) values ('000543899', '08571585', '2023-01-10', 'Denied');
insert into Applied (Student_id, Coop_id, Date, Status) values ('000543899', '08207098', '2023-01-25', 'Accepted Offer');
insert into Applied (Student_id, Coop_id, Date, Status) values ('000543899', '05299157', '2023-01-01', 'Denied Offer');
insert into Applied (Student_id, Coop_id, Date, Status) values ('002377734', '03166582', '2023-01-04', 'Interview completed');
insert into Applied (Student_id, Coop_id, Date, Status) values ('002377734', '01449749', '2023-01-07', 'Interview completed');
insert into Applied (Student_id, Coop_id, Date, Status) values ('002377734', '03021468', '2023-01-10', 'Accepted Offer');
insert into Applied (Student_id, Coop_id, Date, Status) values ('002377734', '05949020', '2023-01-30', 'Denied');

create table Accepted (
	Student_id VARCHAR(9),
	Coop_id VARCHAR(9),
	Date DATE,
	PRIMARY KEY (Student_id, Coop_id)
);
insert into Accepted (Student_id, Coop_id, Date) values ('009762454', '03315397', '2022-01-10');
insert into Accepted (Student_id, Coop_id, Date) values ('001952421', '07642300', '2023-03-11');


create table Advisors (
	Employee_id VARCHAR(9) PRIMARY KEY,
	First_name VARCHAR(50),
	Last_name VARCHAR(50),
	Email VARCHAR(50),
	Phone VARCHAR(50),
	Dept_id VARCHAR(4)
);
insert into Advisors (Employee_id, First_name, Last_name, Email, Phone, Dept_id) values ('005581733', 'Connor', 'Clough', 'cclough0@dropbox.com', '637-504-0360', '0038');
insert into Advisors (Employee_id, First_name, Last_name, Email, Phone, Dept_id) values ('000654882', 'Bayard', 'Grinsted', 'bgrinsted1@imgur.com', '413-991-7473', '0038');
insert into Advisors (Employee_id, First_name, Last_name, Email, Phone, Dept_id) values ('004634824', 'Leona', 'Liddon', 'lliddon2@vk.com', '518-676-2884', '0016');
insert into Advisors (Employee_id, First_name, Last_name, Email, Phone, Dept_id) values ('001187169', 'Tucker', 'Emblen', 'temblen3@storify.com', '250-602-6057', '0016');
insert into Advisors (Employee_id, First_name, Last_name, Email, Phone, Dept_id) values ('007909998', 'Lou', 'Dunlap', 'ldunlap4@theatlantic.com', '912-329-3816', '0007');
insert into Advisors (Employee_id, First_name, Last_name, Email, Phone, Dept_id) values ('008722422', 'Brianna', 'Bottell', 'bbottell5@cbslocal.com', '705-905-0967', '0007');
insert into Advisors (Employee_id, First_name, Last_name, Email, Phone, Dept_id) values ('005488579', 'Matty', 'Haddow', 'mhaddow6@bloglines.com', '871-896-3290', '0098');
insert into Advisors (Employee_id, First_name, Last_name, Email, Phone, Dept_id) values ('004312356', 'Reena', 'McAster', 'rmcaster7@ucla.edu', '575-799-1404', '0098');
insert into Advisors (Employee_id, First_name, Last_name, Email, Phone, Dept_id) values ('004199674', 'Thorny', 'Marsie', 'tmarsie8@angelfire.com', '595-482-8209', '0065');
insert into Advisors (Employee_id, First_name, Last_name, Email, Phone, Dept_id) values ('008283623', 'Arlena', 'Ropert', 'aropert9@google.com', '405-823-3727', '0065');

create table Alumni (
	Student_id VARCHAR(9) PRIMARY KEY,
	First_name VARCHAR(50),
	Last_name VARCHAR(50),
	Email VARCHAR(50),
	Phone VARCHAR(50),
	Major VARCHAR(41)
);
insert into Alumni (Student_id, First_name, Last_name, Email, Phone, Major) values ('004748970', 'Maximilian', 'Furmedge', 'mfurmedge0@java.com', '667-860-8548', 'Mechanical Engineering');
insert into Alumni (Student_id, First_name, Last_name, Email, Phone, Major) values ('003055204', 'Haskel', 'Rathbone', 'hrathbone1@fotki.com', '733-147-6947', 'History');
insert into Alumni (Student_id, First_name, Last_name, Email, Phone, Major) values ('004557608', 'Honoria', 'Croose', 'hcroose2@yolasite.com', '391-127-5114', 'Computer Engineering');
insert into Alumni (Student_id, First_name, Last_name, Email, Phone, Major) values ('007667069', 'Tiphani', 'Samarth', 'tsamarth3@mysql.com', '863-225-8201', 'Business Administration & Health Sciences');
insert into Alumni (Student_id, First_name, Last_name, Email, Phone, Major) values ('009876724', 'Mellicent', 'Chong', 'mchong4@163.com', '509-699-0203', 'History');
insert into Alumni (Student_id, First_name, Last_name, Email, Phone, Major) values ('006582428', 'Collen', 'Boseley', 'cboseley5@skype.com', '997-352-7361', 'Computer Science & Economics');
insert into Alumni (Student_id, First_name, Last_name, Email, Phone, Major) values ('002590824', 'Anthiathia', 'Quigley', 'aquigley6@stanford.edu', '477-458-3918', 'Data Science & Business Administration');
insert into Alumni (Student_id, First_name, Last_name, Email, Phone, Major) values ('003806348', 'Frankie', 'Caroline', 'fcaroline7@cornell.edu', '382-646-0645', 'Mathematics');
insert into Alumni (Student_id, First_name, Last_name, Email, Phone, Major) values ('007228948', 'Mildred', 'Delany', 'mdelany8@tumblr.com', '366-645-5873', 'Physics');
insert into Alumni (Student_id, First_name, Last_name, Email, Phone, Major) values ('008125255', 'Erie', 'Bedford', 'ebedford9@yahoo.com', '958-128-4806', 'Economics & Mathematics');

create table Companies (
	Company_id VARCHAR(7) PRIMARY KEY,
	Name VARCHAR(50),
	Industry VARCHAR(50),
	Description TEXT,
	Country VARCHAR(24)
);
insert into Companies (Company_id, Name, Industry, Description, Country) values ('0038685', 'Monahan, Crist and Boehm', 'n/a', null, 'United States of America');
insert into Companies (Company_id, Name, Industry, Description, Country) values ('0012892', 'Stark-Mueller', 'n/a', null, 'United States of America');
insert into Companies (Company_id, Name, Industry, Description, Country) values ('0067558', 'Herman-Rogahn', 'Restaurants', null, 'United States of America');
insert into Companies (Company_id, Name, Industry, Description, Country) values ('0074833', 'Adams-Cummings', 'EDP Services', null, 'United States of America');
insert into Companies (Company_id, Name, Industry, Description, Country) values ('0045606', 'Herzog Inc', 'Marine Transportation', null, 'United States of America');
insert into Companies (Company_id, Name, Industry, Description, Country) values ('0073526', 'Osinski Inc', 'n/a', null, 'United States of America');
insert into Companies (Company_id, Name, Industry, Description, Country) values ('0017311', 'Dibbert, Mills and Hauck', 'Oil Refining/Marketing', null, 'United States of America');
insert into Companies (Company_id, Name, Industry, Description, Country) values ('0019710', 'Herman-Koss', 'Real Estate Investment Trusts', null, 'United States of America');
insert into Companies (Company_id, Name, Industry, Description, Country) values ('0039908', 'Waters Inc', 'Major Banks', null, 'United States of America');
insert into Companies (Company_id, Name, Industry, Description, Country) values ('0014488', 'Hamill-Schamberger', 'Auto Parts:O.E.M.', null, 'United States of America');

create table Company_location (
	Company_id VARCHAR(7) PRIMARY KEY,
	Address VARCHAR(50),
	Zip_code VARCHAR(50),
	City VARCHAR(50)
);
insert into Company_location (Company_id, Address, Zip_code, City) values ('0038685', '32868 Memorial Junction', null, 'Gaotian');
insert into Company_location (Company_id, Address, Zip_code, City) values ('0012892', '59716 Larry Way', null, 'Tanjung Palas');
insert into Company_location (Company_id, Address, Zip_code, City) values ('0067558', '392 Sutteridge Plaza', null, 'Taiping');
insert into Company_location (Company_id, Address, Zip_code, City) values ('0074833', '861 Eagle Crest Trail', '45980-000', 'Prado');
insert into Company_location (Company_id, Address, Zip_code, City) values ('0045606', '2 5th Avenue', '51247', 'La Laguna');
insert into Company_location (Company_id, Address, Zip_code, City) values ('0073526', '172 Derek Avenue', null, 'Gelan');
insert into Company_location (Company_id, Address, Zip_code, City) values ('0017311', '3411 Nova Terrace', null, 'Kosmach');
insert into Company_location (Company_id, Address, Zip_code, City) values ('0019710', '2 Anniversary Point', '8104', 'Limbaan');
insert into Company_location (Company_id, Address, Zip_code, City) values ('0039908', '4432 2nd Circle', null, 'Al Manqaf');
insert into Company_location (Company_id, Address, Zip_code, City) values ('0014488', '02633 Basil Court', null, 'Dayeuhluhur');


create table Works_at (
	Alumni_id VARCHAR(50),
	Company_id VARCHAR(50),
	Position VARCHAR(50),
	PRIMARY KEY (Alumni_id, Company_id)
);
insert into Works_at (Alumni_id, Company_id, Position) values ('004748970', '0038685', 'Accountant I');
insert into Works_at (Alumni_id, Company_id, Position) values ('003055204', '0012892', 'Computer Systems Analyst III');
insert into Works_at (Alumni_id, Company_id, Position) values ('004557608', '0067558', 'Nurse');
insert into Works_at (Alumni_id, Company_id, Position) values ('007667069', '0074833', 'Database Administrator II');
insert into Works_at (Alumni_id, Company_id, Position) values ('009876724', '0045606', 'Office Assistant II');
insert into Works_at (Alumni_id, Company_id, Position) values ('006582428', '0073526', 'Quality Engineer');
insert into Works_at (Alumni_id, Company_id, Position) values ('002590824', '0017311', 'VP Accounting');
insert into Works_at (Alumni_id, Company_id, Position) values ('003806348', '0019710', 'Food Chemist');
insert into Works_at (Alumni_id, Company_id, Position) values ('007228948', '0039908', 'Assistant Professor');
insert into Works_at (Alumni_id, Company_id, Position) values ('008125255', '0014488', 'General Manager');


create table Completed_coops (
	Student_id VARCHAR(50),
	Company_id VARCHAR(50),
	Position VARCHAR(50),
	Rating INT,
	Industry VARCHAR(50),
	Wage INT,
	Start_date DATE,
	End_date DATE,
	Description VARCHAR(50),
	PRIMARY KEY (Student_id, Company_id)
);
insert into Completed_coops (Student_id, Company_id, Position, Rating, Industry, Wage, Start_date, End_date, Description) values ('002181021', '0045606', 'Staff Accountant IV', 5, 'Finance: Consumer Services', 24, '2022-01-25', '2022-07-25', null);
insert into Completed_coops (Student_id, Company_id, Position, Rating, Industry, Wage, Start_date, End_date, Description) values ('006909902', '0017311', 'Mechanical Systems Engineer', 7, 'Coal Mining', 29, '2022-01-06', '2022-07-27', null);
insert into Completed_coops (Student_id, Company_id, Position, Rating, Industry, Wage, Start_date, End_date, Description) values ('001952421', '0014488', 'Engineer III', 7, 'Savings Institutions', 31, '2028-01-28', '2022-07-28', null);


