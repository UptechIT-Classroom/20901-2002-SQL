-- 1. ลบตารางเก่าถ้ามี (เพื่อป้องกัน Error)
DROP TABLE IF EXISTS Books;

-- 2. สร้างตารางหนังสือ
CREATE TABLE Books (
    book_id INT PRIMARY KEY,
    title VARCHAR(150),   -- ชื่อหนังสือ
    category VARCHAR(50), -- หมวดหมู่
    price INT,            -- ราคา (บาท)
    pages INT             -- จำนวนหน้า
);

-- 3. นำเข้าข้อมูลตัวอย่าง 20 รายการ
INSERT INTO Books VALUES
(1, 'Harry Potter 1', 'Novel', 350, 250),
(2, 'Intro to Java', 'Textbook', 450, 500),
(3, 'Basic SQL', 'Textbook', 320, 180),
(4, 'The Lord of the Rings', 'Novel', 600, 1200),
(5, 'Data Science 101', 'Textbook', 550, 300),
(6, 'Thai Cuisine', 'Cooking', 199, 120),
(7, 'Sherlock Holmes', 'Mystery', 250, 300),
(8, 'Advanced Python', 'Textbook', 480, 400),
(9, 'Healthy Living', 'Health', 150, 90),
(10, 'Naruto Vol.1', 'Comics', 65, 80),
(11, 'One Piece Vol.100', 'Comics', 70, 85),
(12, 'Clean Code', 'Textbook', 750, 450),
(13, 'Percy Jackson', 'Novel', 320, 350),
(14, 'Conan Vol.50', 'Comics', 65, 80),
(15, 'Steve Jobs Biography', 'Biography', 400, 600),
(16, 'Marketing 5.0', 'Business', 390, 280),
(17, 'Rich Dad Poor Dad', 'Business', 280, 250),
(18, 'Easy Cooking', 'Cooking', 120, 100),
(19, 'Network Security', 'Textbook', 550, 500),
(20, 'Doraemon', 'Comics', 55, 60);
