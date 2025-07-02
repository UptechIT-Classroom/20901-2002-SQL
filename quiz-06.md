
ส่วนที่ 1: การเรียกดูข้อมูล (SELECT, FROM)

    1. จงเขียนคำสั่งเพื่อแสดงข้อมูล ทั้งหมดทุกคอลัมน์ จากตาราง `ClubMembers`
    2. จงเขียนคำสั่งเพื่อแสดงข้อมูลเฉพาะ ชื่อเต็ม (FullName) และ ระดับความสามารถ (SkillLevel) ของสมาชิกทุกคน
    3. จงเขียนคำสั่งเพื่อแสดงข้อมูลเฉพาะ รหัสโครงการ (ProjectID), ชื่อโครงการ (ProjectName), และ สถานะ (Status) จากตาราง `Projects`

ส่วนที่ 2: การกรองข้อมูล (WHERE)

    4. จงเขียนคำสั่งเพื่อแสดงข้อมูลทั้งหมดของสมาชิกที่มี `MemberID` เท่ากับ 5
    5. จงเขียนคำสั่งเพื่อแสดง ชื่อเต็ม (FullName) และ อีเมล (Email) ของสมาชิกทุกคนที่มีระดับความสามารถ (`SkillLevel`) เป็น 'Beginner'
    6. จงเขียนคำสั่งเพื่อแสดงข้อมูลโครงการ ทั้งหมด ที่มีสถานะ (`Status`) เป็น 'Planning'
    7. จงเขียนคำสั่งเพื่อแสดงข้อมูลสมาชิกทั้งหมดที่ ไม่ใช่ 'Expert' (`SkillLevel` ไม่เท่ากับ 'Expert')
    8. (AND) จงเขียนคำสั่งเพื่อแสดงข้อมูลสมาชิกทั้งหมดที่มีระดับความสามารถเป็น 'Intermediate' และ เข้าร่วมชมรม (`JoinDate`) ในวันที่ '2025-01-15'
    9. (OR) จงเขียนคำสั่งเพื่อแสดงข้อมูลโครงการทั้งหมดที่มีสถานะเป็น 'Completed' หรือ เริ่มโครงการ (`StartDate`) ก่อนวันที่ '2025-01-01'
    10. (Challenge) จงเขียนคำสั่งเพื่อแสดงข้อมูลสมาชิกทั้งหมดที่เป็น 'Beginner' หรือ 'Intermediate' และ มี `MemberID` มากกว่า 2 (คำใบ้: ใช้วงเล็บ `()` เพื่อจัดกลุ่มเงื่อนไข `OR`)

###เฉลย
1. SELECT * FROM ClubMembers
2. SELECT FullName, SkillLevel FROM ClubMembers;
3. SELECT ProjectID, ProjectName, Status FROM Projects;
4. SELECT * FROM ClubMembers WHERE MemberID = 5;
5. SELECT FullName, Email, SkillLevel FROM ClubMembers WHERE SkillLevel = 'Beginner'
6. SELECT * FROM Projects WHERE Status = 'Planning';
7. SELECT * FROM ClubMembers WHERE SkillLevel != 'Expert';
8. SELECT * FROM ClubMembers WHERE SkillLevel = 'Intermediate' AND JoinDate = '2025-01-15';
9. SELECT * FROM Projects WHERE Status = 'Completed' OR StartDate < '2025-01-01';
10. SELECT * FROM ClubMembers WHERE (SkillLevel = 'Beginner' OR SkillLevel = 'Intermediate') AND MemberID > 2;
