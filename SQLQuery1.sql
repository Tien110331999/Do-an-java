




/*==============================================================*/
/* Tạo     SEQUENCE                                            */
/*==============================================================*/

CREATE SEQUENCE makhtiec_seq
  START WITH 20
  INCREMENT BY 1
  CACHE 100;

CREATE SEQUENCE madat_seq
  START WITH 20
  INCREMENT BY 1
  CACHE 100;

CREATE SEQUENCE id_seq
  START WITH 20
  INCREMENT BY 1
  CACHE 100;

CREATE SEQUENCE sohdtiec_seq
  START WITH 20
  INCREMENT BY 1
  CACHE 100;

CREATE SEQUENCE macs_seq
  START WITH 20
  INCREMENT BY 1
  CACHE 100;

CREATE SEQUENCE sotiec_seq
  START WITH 20
  INCREMENT BY 1
  CACHE 100;

CREATE SEQUENCE sohddv_seq
  START WITH 20
  INCREMENT BY 1
  CACHE 100;

CREATE SEQUENCE madv_seq
  START WITH 20
  INCREMENT BY 1
  CACHE 100;

CREATE SEQUENCE matd_seq
  START WITH 20
  INCREMENT BY 1
  CACHE 100;

CREATE SEQUENCE sohd_seq
  START WITH 20
  INCREMENT BY 1
  CACHE 100;


/*==============================================================*/
/* Table: CO_SO                                                 */
/*==============================================================*/

create table CO_SO 
(
   MACS  Char (6) primary key,
   TEN  varchar(30)
);

/*==============================================================*/
/* nhập dữ liệu table: CO_SO                                    */
/*==============================================================*/

Insert into CO_SO VALUES('CS1',N'Wifi');
Insert into CO_SO VALUES('CS2',N'Tivi 50 ich');
Insert into CO_SO VALUES('CS3',N'Máy lạnh');
Insert into CO_SO VALUES('CS4',N'Ban công');
Insert into CO_SO VALUES('CS5',N'Bồn tắm');
Insert into CO_SO VALUES('CS6',N'Bàn làm việc');
Insert into CO_SO VALUES('CS7',N'Khăn tắm');
Insert into CO_SO VALUES('CS8',N'Dép');
Insert into CO_SO VALUES('CS9',N'Giường đôi');
Insert into CO_SO VALUES('CS10',N'Giường đơn');
Insert into CO_SO VALUES('CS11',N'Máy sấy tóc');
Insert into CO_SO VALUES('CS12',N'Ấm đun siêu tốc');


/*==============================================================*/
/* Table: CTHD_DICH_VU                                          */
/*==============================================================*/

create table CTHD_DICH_VU 
(
   SOHDDV     Char (6)          not null,
   MADV       Char (6)          not null,
   SOLUONG    int,
   constraint PK_CTHD_DICH_VU primary key (SOHDDV, MADV)
);


/*==============================================================*/
/* nhập dữ liệu table: CTHD_DICH_VU                             */
/*==============================================================*/

/*Insert into CTHD_DICH_VU VALUES('HD1','DV1',1);
Insert into CTHD_DICH_VU VALUES('HD1','DV2',2);*/

/*==============================================================*/
/* Index: CTHD_DICH_VU2_FK  vs    CTHD_DICH_VU_FK               */
/* bạn có thể đặt tên cho chỉ mục, xác định bảng, các cột muốn lập chỉ mục và xác định chỉ mục là theo thứ tự tăng dần hoặc giảm dần. */
/*==============================================================*/
create index CTHD_DICH_VU2_FK on CTHD_DICH_VU (
   SOHDDV ASC
);

create index CTHD_DICH_VU_FK on CTHD_DICH_VU (
   MADV ASC
);

/*==============================================================*/
/* Table: CT_LOAI_PHONG                                         */
/*==============================================================*/


create table CT_LOAI_PHONG 
(
   MACS                 Char (6)          not null,
   MALP                 Char (6)          not null,
   constraint PK_CT_LOAI_PHONG primary key (MACS, MALP)
);


/*==============================================================*/
/* nhập dữ liệu table: CT_LOAI_PHONG                            */
/*==============================================================*/

Insert into CT_LOAI_PHONG VALUES('CS1','SD01');
Insert into CT_LOAI_PHONG VALUES('CS2','SD01');
Insert into CT_LOAI_PHONG VALUES('CS3','SD01');
Insert into CT_LOAI_PHONG VALUES('CS7','SD01');
Insert into CT_LOAI_PHONG VALUES('CS8','SD01');
Insert into CT_LOAI_PHONG VALUES('CS10','SD01');
Insert into CT_LOAI_PHONG VALUES('CS1','SD02');
Insert into CT_LOAI_PHONG VALUES('CS2','SD02');
Insert into CT_LOAI_PHONG VALUES('CS3','SD02');
Insert into CT_LOAI_PHONG VALUES('CS7','SD02');
Insert into CT_LOAI_PHONG VALUES('CS9','SD02');
Insert into CT_LOAI_PHONG VALUES('CS10','SD02');
Insert into CT_LOAI_PHONG VALUES('CS11','SD02');
Insert into CT_LOAI_PHONG VALUES('CS1','SD03');
Insert into CT_LOAI_PHONG VALUES('CS2','SD03');
Insert into CT_LOAI_PHONG VALUES('CS3','SD03');
Insert into CT_LOAI_PHONG VALUES('CS7','SD03');
Insert into CT_LOAI_PHONG VALUES('CS9','SD03');
Insert into CT_LOAI_PHONG VALUES('CS10','SD03');
Insert into CT_LOAI_PHONG VALUES('CS11','SD03');
Insert into CT_LOAI_PHONG VALUES('CS4','SD03');
Insert into CT_LOAI_PHONG VALUES('CS1','LX01');
Insert into CT_LOAI_PHONG VALUES('CS2','LX01');
Insert into CT_LOAI_PHONG VALUES('CS3','LX01');
Insert into CT_LOAI_PHONG VALUES('CS7','LX01');
Insert into CT_LOAI_PHONG VALUES('CS8','LX01');
Insert into CT_LOAI_PHONG VALUES('CS10','LX01');
Insert into CT_LOAI_PHONG VALUES('CS6','LX01');
Insert into CT_LOAI_PHONG VALUES('CS11','LX01');
Insert into CT_LOAI_PHONG VALUES('CS12','LX01');
Insert into CT_LOAI_PHONG VALUES('CS1','LX02');
Insert into CT_LOAI_PHONG VALUES('CS2','LX02');
Insert into CT_LOAI_PHONG VALUES('CS3','LX02');
Insert into CT_LOAI_PHONG VALUES('CS4','LX02');
Insert into CT_LOAI_PHONG VALUES('CS5','LX02');
Insert into CT_LOAI_PHONG VALUES('CS6','LX02');
Insert into CT_LOAI_PHONG VALUES('CS7','LX02');
Insert into CT_LOAI_PHONG VALUES('CS8','LX02');
Insert into CT_LOAI_PHONG VALUES('CS9','LX02');
Insert into CT_LOAI_PHONG VALUES('CS11','LX02');
Insert into CT_LOAI_PHONG VALUES('CS12','LX02');

/*==============================================================*/
/* Index: CT_LOAI_PHONG2_FK  vs  CT_LOAI_PHONG_FK               */
/*==============================================================*/
create index CT_LOAI_PHONG2_FK on CT_LOAI_PHONG (
   MALP ASC
);


create index CT_LOAI_PHONG_FK on CT_LOAI_PHONG (
   MACS ASC
);

/*==============================================================*/
/* Table: CT_THUC_DON                                           */
/*==============================================================*/
create table CT_THUC_DON 
(
   TENMON               NVarChar (50)         not null,
   MATD                 Char (6)	          not null,
   constraint PK_CT_THUC_DON primary key (TENMON, MATD)
);


Insert into CT_THUC_DON VALUES(N'Gỏi mực kiểu Thái','TD1');
Insert into CT_THUC_DON VALUES(N'Súp cua gà xé','TD1');
Insert into CT_THUC_DON VALUES(N'Cá chẽm sốt Tứ Xuyên','TD1');
Insert into CT_THUC_DON VALUES(N'Sườn heo nấu đậu - Bánh mì','TD1');
Insert into CT_THUC_DON VALUES(N'Cơm chiên dương châu','TD1');
Insert into CT_THUC_DON VALUES(N'Chè nhãn nhục thạch dừa','TD1');
Insert into CT_THUC_DON VALUES(N'Gỏi sứa mực','TD2');
Insert into CT_THUC_DON VALUES(N'Súp chua cay Thượng Hải','TD2');
Insert into CT_THUC_DON VALUES(N'Gà hấp đông cô','TD2');
Insert into CT_THUC_DON VALUES(N'Bò nấu pate - Bánh mì','TD2');
Insert into CT_THUC_DON VALUES(N'Cơm gói lá sen','TD2');
Insert into CT_THUC_DON VALUES(N'Chè đậu đỏ','TD2');
Insert into CT_THUC_DON VALUES(N'Chả tôm hạt điều','TD3');
Insert into CT_THUC_DON VALUES(N'Súp cua gà xé','TD3');
Insert into CT_THUC_DON VALUES(N'Sườn kinh đô','TD3');
Insert into CT_THUC_DON VALUES(N'Bò nấu tiêu xanh','TD3');
Insert into CT_THUC_DON VALUES(N'Mì hấp dầu hào xá xíu','TD3');
Insert into CT_THUC_DON VALUES(N'Chè hạt sen','TD3');




/*==============================================================*/
/* Index: GOM_CHI_TIET_FK                                       */
/*==============================================================*/
create index GOM_CHI_TIET_FK on CT_THUC_DON (
   MATD ASC
);


/*==============================================================*/
/* Table: DAT_PHONG                                             */
/*==============================================================*/
create table DAT_PHONG 
(
   MADAT                Char (6)          not null,
   SOPHONG              Char (6)          not null,
   NGAYTHUE             DATE,
   NGAYTRA              DATE,
   TIENPHONG			BIGINT,
   TIENTRA              BIGINT,
   HOTEN                NVARCHAR(45),
   CMND                 Char (12),
   SDT                  Char (12),
   constraint PK_DAT_PHONG primary key (MADAT)
);


/*==============================================================*/
/* nhập dữ liệu table: DAT_PHONG                                */
/*==============================================================*/

/*Insert into DAT_PHONG VALUES('DP1','P1000','20190415','20190416',400000,200000,N'Đỗ Văn An','202020202','0123456789');
Insert into DAT_PHONG VALUES('DP2','P1005','20190523','20190525',800000,400000,N'Phạm Thị Hà','202020202','0123456789');*/



/*==============================================================*/
/* Table: DAT_TIEC                                              */
/*==============================================================*/
create table DAT_TIEC 
(
   SOTIEC               Char (6)          not null,
   MAKHTIEC             Char (6),
   MALT                 Char (6),
   MASANH               Char (6),
   MATD                 Char (6)          not null,
   SOBAN                int,
   TGDIENRA             DATE,
   COC					BIGINT,
   TIENCOC				BIGINT,
   MANV					CHAR(6),
   constraint PK_DAT_TIEC primary key (SOTIEC)
);





/*Insert into Dat_Tiec values('DT1','KH1','LT1','S2','TD2',10,'20190601',NULL,NULL,'1');
Insert into Dat_Tiec values('DT2','KH2','LT3','S1','TD1',20,'20170501',NULL,NULL,'2');*/

/*==============================================================*/
/* Index: GOM____FK vs DAT_TIEC_FK   vs CO_FK   vs  O_FK        */
/*==============================================================*/
create index GOM____FK on DAT_TIEC (
   MATD ASC
);


create index DAT_TIEC_FK on DAT_TIEC (
   MAKHTIEC ASC
);


create index CO_FK on DAT_TIEC (
   MALT ASC
);


create index O_FK on DAT_TIEC (
   MASANH ASC
);

/*==============================================================*/
/* Table: DICH_VU                                               */
/*==============================================================*/
create table DICH_VU 
(
   MADV                 Char (6)          not null,
   TENDV                NVARCHAR(50),
   DVT                  NVARCHAR(15),
   GIA                  int,
   constraint PK_DICH_VU primary key (MADV)
);

/*==============================================================*/
/* nhập dữ liệu table: DAT_PHONG                                */
/*==============================================================*/

Insert into DICH_VU VALUES('DV1',N'karaoke',N'giờ',150000);
Insert into DICH_VU VALUES('DV2',N'giặt là','kg',55000);
Insert into DICH_VU VALUES('DV3',N'Coca','lon',30000);
Insert into DICH_VU VALUES('DV4',N'Dọn phòng','lần',100000);

/*==============================================================*/
/* Table: HD_DICH_VU                                            */
/*==============================================================*/


create table HD_DICH_VU 
(
   SOHDDV               Char (6)          not null,
   MANV                 Char (6),
   MADAT                Char (6),
   THANHTIEN            bigint,
   NGAYLAP              DATE,
   constraint PK_HD_DICH_VU primary key (SOHDDV)
);


/*==============================================================*/
/* nhập dữ liệu table:  HD_DICH_VU                              */
/*==============================================================*/

/*Insert into HD_DICH_VU VALUES('HD1',null,'DP1',205000,' 20190416');*/

/*==============================================================*/
/* Index: LAP_DV_FK                                             */
/*==============================================================*/


create index LAP_DV_FK on HD_DICH_VU (
   MANV ASC
);


/*==============================================================*/
/* Table: HD_TIEC                                               */
/*==============================================================*/
create table HD_TIEC 
(
   SOHDTIEC             Char (6)          not null,
   MANV                 Char (6),
   SOTIEC               Char (6),
   NGAYLAP              DATE,
   TONGTIEN             bigint,
   TIENTRA              bigint,
   TIENTHUA             bigint,
   TINHTRANG            NVARCHAR(15),
   TIENNUOC				bigint,
   constraint PK_HD_TIEC primary key (SOHDTIEC)
);

/*Insert into HD_Tiec values('HT1',2,'DT1',null,22000000,11000000,null,'chua thanh toan',0);
Insert into HD_Tiec values('HT2',3,'DT2','20170515',25000000,25100000,100000,'da thanh toan',0);*/



/*==============================================================*/
/* Index: LAP__FK   vs   THANH_TOAN_FK                          */
/*==============================================================*/
create index LAP__FK on HD_TIEC (
   MANV ASC
);


create index THANH_TOAN_FK on HD_TIEC (
   SOTIEC ASC
);

/*==============================================================*/
/* Table: HOA_DON                                               */
/*==============================================================*/
create table HOA_DON 
(
   SOHD                 Char (6)          not null,
   MADAT                Char (6),
   SOHDDV               Char (6),
   MANV                 Char (6),
   TINHTRANG            NVARCHAR(15),
   NGAYLAP              DATE,
   TONGTIEN             bigint,
   TIENNHAN             bigint,
   TIENTHUA             bigint,
   constraint PK_HOA_DON primary key (SOHD)
);

/*==============================================================*/
/* nhập dữ liệu table: HOA_DON                                  */
/*==============================================================*/

/*Insert into HOA_DON VALUES('H1','DP1','HD1','1','chua thanh toan',GETDATE(),1005000,0,0);*/



/*==============================================================*/
/* Index: GOM_2_FK  vs  RELATIONSHIP_11_FK   vs   LAP_2_FK      */
/*==============================================================*/
create index GOM_2_FK on HOA_DON (
   MADAT ASC
);


create index RELATIONSHIP_11_FK on HOA_DON (
   SOHDDV ASC
);


create index LAP_2_FK on HOA_DON (
   MANV ASC
);


/*==============================================================*/
/* Table: KHACH_HANG_TIEC                                       */
/*==============================================================*/
create table KHACH_HANG_TIEC 
(
   MAKHTIEC             Char (6)          not null,
   HOTEN                NVARCHAR(25),
   SDT                  Char (12),
   CMND                 Char (12),
   constraint PK_KHACH_HANG_TIEC primary key (MAKHTIEC)
);

/*Insert into KHACH_HANG_TIEC VALUES('KH1',N'Nguyễn Văn An','3543838','528888888');
Insert into KHACH_HANG_TIEC VALUES('KH2',N'Trần Văn B','6386386','88899999');*/


/*==============================================================*/
/* Table: LOAI_PHONG                                            */
/*==============================================================*/
create table LOAI_PHONG 
(
   MALP                 Char (6)          not null,
   LOAI                 NVARCHAR(15),
   GIA                  bigint,
   constraint PK_LOAI_PHONG primary key (MALP)
);


Insert into LOAI_PHONG VALUES('SD01','thuong',1000000);
Insert into LOAI_PHONG VALUES('SD02','thuong',1200000);
Insert into LOAI_PHONG VALUES('SD03','thuong',1500000);
Insert into LOAI_PHONG VALUES('LX01','vip',2200000);
Insert into LOAI_PHONG VALUES('LX02','vip',2500000);


/*==============================================================*/
/* Table: LOAI_TIEC                                             */
/*==============================================================*/


create table LOAI_TIEC 
(
   MALT                 Char (6)           not null,
   TENLT                NVARCHAR(25),
   constraint PK_LOAI_TIEC primary key (MALT)
);

Insert into Loai_Tiec values('LT1',N'Đám cưới');
Insert into Loai_Tiec values('LT2',N'Sinh nhật');
Insert into Loai_Tiec values('LT3',N'Liên hoan');
Insert into Loai_Tiec values('LT4',N'Khác');

/*==============================================================*/
/* Table: LUU_TRU                                               */
/*==============================================================*/
create table LUU_TRU 
(
   ID                   Char (12)         not null,
   SOPHONG              Char (6),
   HOTEN                NVARCHAR(50),
   CMND                 Char (12),
   SDT                  Char (12),
   NGAYSINH             DATE,
   NGAYDEN              DATE,
   constraint PK_LUU_TRU primary key (ID)
);

/*Insert into LUU_TRU VALUES('LT01','P1000',N'Đỗ Văn An','202020202','0123456789','19690916','20190415' );
Insert into LUU_TRU VALUES('LT02','P1001',N'Phạm Thị Hà','202020202','0123456789','19700916','20190523');
Insert into LUU_TRU VALUES('LT03','P1000',N'Nguyễn Trãi','202020202','0123456789','19710916','20190523');*/
 
/*==============================================================*/
/* Index: THUE_FK                                               */
/*==============================================================*/
create index THUE_FK on LUU_TRU (
   SOPHONG ASC
);

/*==============================================================*/
/* Table: NHAN_VIEN                                             */
/*==============================================================*/
create table NHAN_VIEN 
(
   MANV                 Char (6)          not null,
   TENTK                NVARCHAR(50),
   HOTEN                NVARCHAR(50),
   CHUCVU               NVARCHAR(15),
   DIACHI               NVARCHAR(100),
   SDT                  char(12),
   NGAYVAOLAM           DATE,
   constraint PK_NHAN_VIEN primary key (MANV)
);
Insert into NHAN_VIEN VALUES('1','hoangduc',N'Trần Hoàng Đức','LT',N'163 Thống Nhất Hồ Chí Minh','0958789875','20190203');
Insert into NHAN_VIEN VALUES('2','thanhngan',N'Nguyễn Thanh Ngân','LT',N'164 Thống Nhất Hồ Chí Minh','0958789876','20190203');
Insert into NHAN_VIEN VALUES('3','minhnhat',N'Phạm Minh Nhật','LT',N'165 Thống Nhất Hồ Chí Minh','0958789877','20190203');
Insert into NHAN_VIEN VALUES('4','tramy',N'Đỗ Trà My','QL',N'166 Thống Nhất Hồ Chí Minh','0958789878','20190203');
Insert into NHAN_VIEN VALUES('5','trongtien',N'Trần Trọng Tiến','QL',N'166 Thống Nhất Hồ Chí Minh','0962905575','20200203');

/*==============================================================*/
/* Index: DANG_NHAP_FK                                          */
/*==============================================================*/

create index DANG_NHAP_FK on NHAN_VIEN (
   TENTK ASC
);

/*==============================================================*/
/* Table: PHONG                                                 */
/*==============================================================*/
create table PHONG 
(
   SOPHONG             char(6)          not null,
   MADAT                char(6) ,
   MALP                 char(6)           not null,
   TINHTRANG            NVARCHAR(15),
   STT					INT,
   CHUMA				CHAR(3),
   SOMA INT,
   constraint PK_PHONG primary key (SOPHONG)
);
Insert into PHONG VALUES('P1000',NULL,'SD01','thue',1,'PA0',1);
Insert into PHONG VALUES('P1001',NULL,'SD01','trong',2,'PB0',1);
Insert into PHONG VALUES('P1002',NULL,'SD01','trong',3,'PC0',1);
Insert into PHONG VALUES('P1003',NULL,'SD02','trong',4,'PD0',1);
Insert into PHONG VALUES('P1004',NULL,'SD02','trong',5,'PE0',1);
Insert into PHONG VALUES('P1005',NULL,'SD02','thue',6,'PF0',1);
Insert into PHONG VALUES('P1006',NULL,'SD03','trong',7,'PG0',1);
Insert into PHONG VALUES('P1007',NULL,'SD03','trong',8,'PH0',1);
Insert into PHONG VALUES('P1008',NULL,'SD03','thue',9,'PI0',1);
Insert into PHONG VALUES('P1009',NULL,'LX01','trong',10,'PK0',1);
Insert into PHONG VALUES('P2000',NULL,'SD01','trong',11,'QA0',1);
Insert into PHONG VALUES('P2001',NULL,'SD01','trong',12,'QB0',1);
Insert into PHONG VALUES('P2002',NULL,'SD01','trong',13,'QC0',1);
Insert into PHONG VALUES('P2003',NULL,'SD02','trong',14,'QD0',1);
Insert into PHONG VALUES('P2004',NULL,'SD02','trong',15,'QE0',1);
Insert into PHONG VALUES('P2005',NULL,'SD02','trong',16,'QF0',1);
Insert into PHONG VALUES('P2006',NULL,'SD03','trong',17,'QG0',1);
Insert into PHONG VALUES('P2007',NULL,'SD03','trong',18,'QH0',1);
Insert into PHONG VALUES('P2008',NULL,'SD03','trong',19,'QI0',1);
Insert into PHONG VALUES('P2009',NULL,'LX01','trong',20,'QK0',1);
Insert into PHONG VALUES('P3000',NULL,'SD01','trong',21,'WA0',1);
Insert into PHONG VALUES('P3001',NULL,'SD01','trong',22,'WB0',1);
Insert into PHONG VALUES('P3002',NULL,'SD01','trong',23,'WC0',1);
Insert into PHONG VALUES('P3003',NULL,'SD02','trong',24,'WD0',1);
Insert into PHONG VALUES('P3004',NULL,'SD02','trong',25,'WE0',1);
Insert into PHONG VALUES('P3005',NULL,'SD02','trong',26,'WF0',1);
Insert into PHONG VALUES('P3006',NULL,'SD03','trong',27,'WG0',1);
Insert into PHONG VALUES('P3007',NULL,'SD03','trong',28,'WH0',1);
Insert into PHONG VALUES('P3008',NULL,'SD03','trong',29,'WI0',1);
Insert into PHONG VALUES('P3009',NULL,'LX01','trong',30,'WK0',1);
Insert into PHONG VALUES('P4000',NULL,'LX01','trong',31,'XA0',1);
Insert into PHONG VALUES('P4001',NULL,'LX01','trong',32,'XB0',1);
Insert into PHONG VALUES('P4002',NULL,'LX01','trong',33,'XC0',1);
Insert into PHONG VALUES('P4003',NULL,'LX02','trong',34,'XD0',1);
Insert into PHONG VALUES('P4004',NULL,'LX02','trong',35,'XE0',1);
Insert into PHONG VALUES('P4005',NULL,'LX02','trong',36,'XF0',1);
Insert into PHONG VALUES('P4006',NULL,'SD02','trong',37,'XG0',1);
Insert into PHONG VALUES('P4007',NULL,'SD02','trong',38,'XH0',1);
Insert into PHONG VALUES('P4008',NULL,'SD03','trong',39,'XI0',1);
Insert into PHONG VALUES('P4009',NULL,'SD03','trong',40,'XK0',1);
Insert into PHONG VALUES('P5000',NULL,'LX01','trong',41,'MA0',1);
Insert into PHONG VALUES('P5001',NULL,'LX01','trong',42,'MB0',1);
Insert into PHONG VALUES('P5002',NULL,'LX01','trong',43,'MC0',1);
Insert into PHONG VALUES('P5003',NULL,'LX02','trong',44,'MD0',1);
Insert into PHONG VALUES('P5004',NULL,'LX02','trong',45,'ME0',1);
Insert into PHONG VALUES('P5005',NULL,'LX02','trong',46,'MF0',1);
Insert into PHONG VALUES('P5006',NULL,'SD02','trong',47,'MH0',1);
Insert into PHONG VALUES('P5007',NULL,'SD02','trong',48,'MG0',1);
Insert into PHONG VALUES('P5008',NULL,'SD03','trong',49,'MI0',1);
Insert into PHONG VALUES('P5009',NULL,'SD03','trong',50,'MK0',1);

/*==============================================================*/
/* Index: GOM_FK                                                */
/*==============================================================*/
create index GOM_FK on PHONG (
   MALP ASC
);

/*==============================================================*/
/* Table: SANH                                                  */
/*==============================================================*/
create table SANH 
(
   MASANH               char(6)          not null,
   TENSANH              NVARCHAR(15),
   SOBANTOIDA           int,
   SOBANTOITHIEU        int,
   STT INT,
   constraint PK_SANH primary key (MASANH)
);

Insert into SANH values('S1','A',50,35,1);
Insert into SANH values('S2','B',40,25,2);
Insert into SANH values('S3','C',40,25,3);
Insert into SANH values('S4','D',30,20,4);
Insert into SANH values('S5','E',10,6,5);
Insert into SANH values('S6','F',10,6,5);

create table CT_SANH
(
	MASANH				CHAR(6),
	NGAYTHUE			DATE,
	TINHTRANG			NVARCHAR(15),
	constraint PK_CTSANH primary key (MASANH,NGAYTHUE)
);

Insert into CT_SANH values('S6',GETDATE(),'co');


/*==============================================================*/
/* Table: TAI_KHOAN                                             */
/*==============================================================*/
create table TAI_KHOAN 
(
   TENTK                NVARCHAR(50)         not null,
   MATKHAU              NVARCHAR(25),
   ISADMIN              SMALLINT             not null,
   constraint PK_TAI_KHOAN primary key (TENTK)
);

Insert into TAI_KHOAN VALUES('hoangduc','duc123',0);
Insert into TAI_KHOAN VALUES('thanhngan','ngan123',0);
Insert into TAI_KHOAN VALUES('minhnhat','nhat123',0);
Insert into TAI_KHOAN VALUES('tramy','my123',1);
Insert into TAI_KHOAN VALUES('trongtien','tien123',1);
/*==============================================================*/
/* Table: THUC_DON                                              */
/*==============================================================*/
create table THUC_DON 
(
   MATD                 char(6)          not null,
   TEN                  NVARCHAR(25),
   GIA                  BIGINT,
   constraint PK_THUC_DON primary key (MATD)
);


Insert into THUC_DON values('TD1',N'Thực đơn 1',2500000);
Insert into THUC_DON values('TD2',N'Thực đơn 2',2200000);
Insert into THUC_DON values('TD3',N'Thực đơn 3',2900000);

/*==============================================================*/
/* Table: NUOC_UONG                                             */
/*==============================================================*/

create table NUOC_UONG 
      (
         MANUOC               CHAR(6)          not null,
         TEN                  NVARCHAR(25),
         GIA                  BIGINT,
         constraint PK_NUOC_UONG primary key (MANUOC)
      );

Insert into NUOC_UONG values('N1','Coca Cola',15000);
Insert into NUOC_UONG values('N2',N'Tigar Bạc',17000);
Insert into NUOC_UONG values('N3',N'Nước suối',10000);
Insert into NUOC_UONG values('N4',N'Heineken',22000);
Insert into NUOC_UONG values('N5',N'Bia 333',16000);
Insert into NUOC_UONG values('N6',N'7 up',14000);
Insert into NUOC_UONG values('N7',N'Rượu van',220000);

/*==============================================================*/
/* Table:  CT_NUOC_UONG                                         */
/*==============================================================*/

create table CT_NUOC_UONG 
      (
         MANUOC               CHAR(6)          not null,
         SOHDTIEC             CHAR(6)          not null,
         SOLUONG              INT,
         constraint PK_CT_NUOC_UONG primary key (MANUOC, SOHDTIEC)
      );



/*Insert into CT_NUOC_UONG values('N1','HT2',30);
Insert into CT_NUOC_UONG values('N2','HT2',20);*/


/*==============================================================*/
/* foreign key:  KHOA NGOAI                                     */
/*==============================================================*/
 
 alter table CTHD_DICH_VU
   add constraint FK_CTHD_DIC_CTHD_DICH_DICH_VU foreign key (MADV)
      references DICH_VU (MADV);

alter table CTHD_DICH_VU
   add constraint FK_CTHD_DIC_CTHD_DICH_HD_DICH_ foreign key (SOHDDV)
      references HD_DICH_VU (SOHDDV);

alter table CT_LOAI_PHONG
   add constraint FK_CT_LOAI__CT_LOAI_P_CO_SO foreign key (MACS)
      references CO_SO (MACS);

alter table CT_LOAI_PHONG
   add constraint FK_CT_LOAI__CT_LOAI_P_LOAI_PHO foreign key (MALP)
      references LOAI_PHONG (MALP);

alter table CT_THUC_DON
   add constraint FK_CT_THUC__GOM_CHI_T_THUC_DON foreign key (MATD)
      references THUC_DON (MATD);

alter table DAT_PHONG
   add constraint FK_DAT_PHON__DUOC_THU_PHONG foreign key (SOPHONG)
      references PHONG (SOPHONG);

alter table DAT_TIEC
   add constraint FK_DAT_TIEC_CO_LOAI_TIE foreign key (MALT)
      references LOAI_TIEC (MALT);

alter table DAT_TIEC
   add constraint FK_DAT_TIEC_DAT_TIEC_KHACH_HA foreign key (MAKHTIEC)
      references KHACH_HANG_TIEC (MAKHTIEC);

alter table DAT_TIEC
   add constraint FK_DAT_TIEC_GOM____THUC_DON foreign key (MATD)
      references THUC_DON (MATD);

alter table DAT_TIEC
   add constraint FK_DAT_TIEC_O_SANH foreign key (MASANH)
      references SANH (MASANH);

alter table HD_DICH_VU
   add constraint FK_HD_DICH__LAP_DV_NHAN_VIE foreign key (MANV)
      references NHAN_VIEN (MANV);

alter table HD_DICH_VU
   add constraint FK_HD_DICH__THANH_TOA_DAT_PHON foreign key (MADAT)
      references DAT_PHONG (MADAT);

alter table HD_TIEC
   add constraint FK_HD_TIEC_LAP__NHAN_VIE foreign key (MANV)
      references NHAN_VIEN (MANV);

alter table HD_TIEC
   add constraint FK_HD_TIEC_THANH_TOA_DAT_TIEC foreign key (SOTIEC)
      references DAT_TIEC (SOTIEC);

alter table HOA_DON
   add constraint FK_HOA_DON_GOM_2_DAT_PHON foreign key (MADAT)
      references DAT_PHONG (MADAT);

alter table HOA_DON
   add constraint FK_HOA_DON_LAP_2_NHAN_VIE foreign key (MANV)
      references NHAN_VIEN (MANV);

alter table HOA_DON
   add constraint FK_HOA_DON_RELATIONS_HD_DICH_ foreign key (SOHDDV)
      references HD_DICH_VU (SOHDDV);

alter table LUU_TRU
   add constraint FK_LUU_TRU_LUU_TRU___PHONG foreign key (SOPHONG)
      references PHONG (SOPHONG);

alter table NHAN_VIEN
   add constraint FK_NHAN_VIE_DANG_NHAP_TAI_KHOA foreign key (TENTK)
      references TAI_KHOAN (TENTK);

alter table PHONG
   add constraint FK_PHONG_GOM_LOAI_PHO foreign key (MALP)
      references LOAI_PHONG (MALP);

alter table CT_NUOC_UONG
	add constraint FK_CT_NUOC__CT_NUOC_U_HD_TIEC foreign key (SOHDTIEC)
		references HD_TIEC (SOHDTIEC);

alter table CT_NUOC_UONG
	add constraint FK_CT_NUOC__CT_NUOC_U_NUOC_UON foreign key (MANUOC)
		references NUOC_UONG (MANUOC);

alter table DAT_TIEC
	add constraint FK_DAT_TIEC_LAP_DAT_T_NHAN_VIE foreign key (MANV)
		references NHAN_VIEN (MANV);


