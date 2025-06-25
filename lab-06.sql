-- ล้างข้อมูลเก่า (ถ้ามี)
DROP TABLE IF EXISTS ClubMembers;
DROP TABLE IF EXISTS Projects;

-- สร้างตารางและเพิ่มข้อมูลใหม่
CREATE TABLE ClubMembers (
    MemberID INTEGER PRIMARY KEY,
    FullName TEXT NOT NULL,
    JoinDate TEXT,
    SkillLevel TEXT,
    Email TEXT
);

CREATE TABLE Projects (
    ProjectID INTEGER PRIMARY KEY,
    ProjectName TEXT NOT NULL,
    StartDate TEXT,
    Status TEXT,
    LeaderID INTEGER
);

INSERT INTO ClubMembers (MemberID, FullName, JoinDate, SkillLevel, Email) VALUES
(1, 'สมชาย ใจดี', '2025-01-15', 'Intermediate', 'somchai.j@example.com'),
(2, 'ปิติ ยินดี', '2025-01-15', 'Intermediate', 'piti.y@example.com'),
(3, 'สมศรี รักเรียน', '2025-02-01', 'Beginner', 'somsri.r@example.com'),
(4, 'วีระ มานะ', '2025-02-10', 'Beginner', 'veera.m@example.com'),
(5, 'มานี มีสุข', '2025-03-05', 'Expert', 'manee.m@example.com');

INSERT INTO Projects (ProjectID, ProjectName, StartDate, Status, LeaderID) VALUES
(101, 'Redesign School Website', '2025-02-01', 'In Progress', 1),
(102, 'Develop Club App', '2025-03-01', 'Planning', 2),
(103, 'SQL Workshop for Beginners', '2025-04-01', 'Planning', NULL),
(104, 'Old Project 2024', '2024-10-10', 'Completed', 1);
