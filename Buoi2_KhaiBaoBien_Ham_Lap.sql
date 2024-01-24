-- Cac loai bien trong SQL 
-- 1. Cu phap
-- DECLARE @var_name data type;
-- @var_name : Ten bien 
-- data type: Kieu du lieu 
-- VD:
DECLARE @year INT;
DECLARE @name NVARCHAR(100);
-- Set gia tri cho bien 
SET @year = 2023  -- GAN GIA TRI CHO BIEN 
-- IN BIEN RA => SELECT 
SELECT @year
-- 1. Tinh tong, hieu cua 3 so nguyen 
DECLARE @SOTHUNHAT INT;
DECLARE @SOTHUHAI INT;
DECLARE @SOTHUBA INT;
DECLARE @TINHTONG INT;
DECLARE @TINHHIEU INT;
SET @SOTHUNHAT = 5
SET @SOTHUHAI = 3
SET @SOTHUBA =7
SET @TINHTONG = @SOTHUNHAT + @SOTHUHAI +@SOTHUBA;
SET @TINHHIEU = @SOTHUNHAT - @SOTHUHAI - @SOTHUBA;
SELECT @TINHTONG
SELECT @TINHHIEU
-- 2. Tinh chu vi, dien tich cua hinh chu nhat vs 2 canh co gia tri mac dinh 
-- TU LAM 
-- 2. BIEN BANG 
-- DECLARE @TB_NAME TABLE(ID INT, MASV NVARCHAR(100)..)
-- INSERT INTO @TB_NAME
-- VALUES(.....)
-- SELECT * FROM @TB_NAME
-- TAO 1 bien bang giang vien 
-- gom cac truong ma - varchar(100),ten - nvarchar(50)
-- Them du lieu vao bien bang giang vien nhung giang vien co ten bat dau la N
DECLARE @TB_GIANGVIEN TABLE(MASV VARCHAR(100),TEN NVARCHAR(50))
INSERT INTO @TB_GIANGVIEN
SELECT MaGiangVien,TenGiangVien FROM GiangVien
WHERE TenGiangVien LIKE 'N%'
SELECT * FROM @TB_GIANGVIEN
SELECT * FROM GiangVien

-- Khoi lenh - T-SQL
-- BEGIN
--     -- Chua 1 khoi lenh
-- END
-- Cac ham hay dung 
-- 1. CAST : EP KIEU DU LIEU 
-- Chuyen 1 so float -> int 
SELECT CAST(1.2 AS INT) -- -> 1
-- 2. CONVERT : EP KIEU 
-- 3. ABS : tri tuyet doi
-- 4. CEILING => lay gia tri tiem can 
-- 5. FLOOR , power,ROUND....
-- Cac ham chuoi: LEN(String) => Tra ve so ky tu ,
--  LTRIM: loai bo khoang trang ben trai
-- RTRIM: loai bo khoang trang ben phai 
-- TRIM: cat 2 dau (SQL tu ban 2017 do len)
-- 3. Cau lenh if else trong SQL
-- Cu phap 
-- IF bieu thuc 
    -- BEGIN 
    --     -- Menh de 
    -- END 
-- ELSE 
    -- BEGIN 
    --     -- Menh De
    -- END 
-- Toan tu 3 ngoi : IIF()
-- IIF(dieu kien,gia tri dung, gia tri sai)
-- Vong lap 
-- WHILE dieu kien 
-- BEGIN 
--     -- Code 
-- END
