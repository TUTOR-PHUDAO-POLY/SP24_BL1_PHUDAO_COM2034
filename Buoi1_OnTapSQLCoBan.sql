-- 1-1: Quan he 1-1 
-- 1-n: Quan he 1-n 
-- n-n : Quan he n-n 
CREATE DATABASE buoi1;
USE buoi1;
CREATE TABLE GiangVien(
    MaGiangVien varchar(100) PRIMARY KEY,
    TenGiangVien NVARCHAR(50),
    Email VARCHAR(50),
    SoDienThoai VARCHAR(20)
    -- 1 BANG CO 1 KHOA CHINH 
    -- 1 KHOA CHINH CO THE CO NHIEU THUOC TINH KHOA CHINH 
    -- PRIMARY KEY(VIET CAC THUOC TINH KHOA CHINH O DAY)
)
-- TRO GIANG 
CREATE TABLE TROGIANG(
    MATROGIANG VARCHAR(100) NOT NULL PRIMARY KEY,
    TENTROGIANG NVARCHAR(100) NOT NULL,
    EMAIL VARCHAR(100) NOT NULL,
    SODIENTHOAI VARCHAR(100) NOT NULL
)
-- MON HOC 
CREATE TABLE MonHoc(
    MaMonHoc VARCHAR(100) PRIMARY KEY,
    MaGiangVien varchar(100) REFERENCES GiangVien(MaGiangVien),
    -- KIEU DU LIEU PHAI TRUNG TRONG KHOA CHINH
    TenMonHoc NVARCHAR(100),
    SoTinChi INT
)
-- BUOI TRO GIANG 
Create table BuoiTroGiang(
    MaBuoiTroGiang VARCHAR(100) primary key,
    MaMonHoc VARCHAR(100) references MonHoc(MaMonHoc),
    MaTroGiang VARCHAR(100) references TroGiang(MaTroGiang),
    SoThuTu int
);

-- INSERT INTO 
INSERT INTO GiangVien values
('gv1',N'Nguyễn Thị Thảo','thao@gamil.com','01324345'),
('gv2',N'Nguyễn Thị Hằng','hang@gamil.com','032245'),
('gv3',N'Nguyễn Thị Trang','trang@gamil.com','05672345'),
('gv4',N'Nguyễn Thị Huyền','huyen@gamil.com','08672345'),
('gv5',N'Nguyễn Thị Lan','thao@gamil.com','092345');

INSERT INTO TroGiang VALUES
('tg1',N'Dương Minh Hà','minh@','0123'),
('tg2',N'Dương Minh Hào','minh@','0123'),
('tg3',N'Dương Minh Hàng','minh@','0123'),
('tg4',N'Dương Minh Hành','minh@','0123'),
('tg5',N'Dương Minh Hùng','minh@','0123');

INSERT INTO MonHoc values
('mh1','gv1','Java',3),
('mh2','gv2','C#',3),
('mh3','gv3','COM2012',3),
('mh4','gv4','COM2034',3),
('mh5','gv5','MOB1023',4);

INSERT INTO BuoiTroGiang values 
('b1','mh1','tg1',1),
('b2','mh2','tg2',2),
('b3','mh1','tg3',3),
('b4','mh1','tg4',4),
('b5','mh1','tg5',5);