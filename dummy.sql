MsSayur 

CREATE TABLE MsSayur(
IDSayur varchar(10)primary key not null,
NamaSayur varchar(40)not null,
Kandungan varchar(10)not null,
Satuan varchar(40)not null,
HargaPerSatuan varchar(10) null
);

SELECT * FROM MsSayur

INSERT INTO MsSayur(IDSayur,NamaSayur,Kandungan,Satuan,HargaPerSatuan)VALUES
('S001','Tomat','Vit C','Kilogram','15.000'),
('S002','Labu Siam','Kalsium','Pack (harus utuh)','10.000'),
('S003','Wortel','Vit A','Kilogram','10.000'),
('S004','Kol','Vit B3','Kilogram','5.000'),
('S005','Brokoli','Kalsium','Pack (harus utuh)','20.000'),
('S006','Sawi','Kalsium','Kilogram','5.000'),
('S007','Kentang','Vit B3','Kilogram','15.000'),
('S008','Kacang Panjang','Protein','Ikat (harus utuh)','5.000'),
('S009','Tauge','Protein','Pack (harus utuh)','5.000'),
('S010','Kangkung','Vit D','Ikat (harus utuh)','5.000')

MsKasir

CREATE TABLE MsKasir(
IDKasir varchar(10)primary key not null,
NamaKasir varchar(40)not null,
JenisKelamin varchar(10) null,
TglMasuk varchar(40)not null,
TglResign varchar(40) null
);
SELECT * FROM  MsKasir

INSERT INTO MsKasir(IDKasir,NamaKasir,JenisKelamin,TglMasuk,TglResign)VALUES
('K001','Toglek','P','01-Jan-18',''),
('K002','Sengkleh','L','01-Mar-18',''),
('K003','Kapelag','L','01-Jan-18','31-Mar-18'),
('K004','Genggong','L','01-Feb-18',''),
('K005','Cemcugur','P','01-Feb-18',''),
('K006','Kulanas','L','01-Jan-18',''),
('K007','Kalimarou','L','01-Jan-18','31-Agu-18'),
('K008','Kaleak','P','01-Feb-18','')

Trx

CREATE TABLE Trx(
IDTrx varchar(10)primary key not null,
TglTrx varchar(40)not null,
JmMulai varchar(10) null,
JmSelesai varchar(40)not null,
NmCustomer varchar(40) null,
Nominal varchar(40) null,
Custorate varchar(40) null,
IDKasir varchar(40) not null
);
select * from Trx

INSERT INTO Trx(IDTrx,TglTrx,JmMulai,JmSelesai,NmCustomer,Nominal,Custorate,IDKasir)VALUES
('Tr0001','02-Sep-18','7:00','7:20','Tami Mirdad','30.000','Puas','K008'),
('Tr0002','02-Sep-18','10:15','10:30','Teja Sulaksana','25.000','Puas','K006'),
('Tr0003','02-Sep-18','14:57','15:15','Aenun Zack','45.000','Netral','K006'),
('Tr0004','02-Sep-18','13:35','16:00','Throw In','40.000','Puas','K004'),
('Tr0005','02-Sep-18','8:02','10:03','Pak Raden','60.000','Puas','K001'),
('Tr0006','02-Sep-18','9:39','9:55','Usro bin Pinipin','15.000','Kecewa','K002'),
('Tr0007','02-Sep-18','7:47','8:50','Tuminem','35.000','Netral','K008'),
('Tr0008','02-Sep-18','17:00','17:21','Solangki','44.000','Kecewa','K007'),
('Tr0009','02-Sep-18','12:00','12:40','Moria Gatte','36.000','Puas','K001'),
('Tr0010','03-Sep-18','6:06','6:58','Throw In','32.000','Puas','K001'),
('Tr0011','03-Sep-18','16:40','17:10','Tami Mirdad','100.000','Puas','K002'),
('Tr0012','03-Sep-18','8:08','8:44','Tuminem','77.000','Netral','K005'),
('Tr0013','03-Sep-18','9:33','9:57','Solangki','50.000','Kecewa','K005'),
('Tr0014','04-Sep-18','11:11','12:12','Moria Gatte','23.000','Puas','K002'),
('Tr0015','05-Sep-18','15:54','16:46','Aenun Zack','26.000','Puas','K002'),
('Tr0016','06-Sep-18','11:00','12:00','Teja Sukmana','24.000','Netral','K008')

TrxDetail

CREATE TABLE TrxDetail(
SeqNo varchar(15)primary key not null,
IDTrx varchar(40)not null,
IDSayur varchar(10) null,
JnsMutasi varchar(40)not null,
Qty varchar(40) null,
Harga varchar(40) null,
);
select * from TrxDetail

insert into TrxDetail(SeqNo,IDTrx,IDSayur,JnsMutasi,Qty,Harga)values
('SQ000001','Tr0001','S001','Jual','4','40.000'),
('SQ000002','Tr0001','S009','Beli','2','-10.000'),
('SQ000003','Tr0002','S003','Jual','0,5','5.000'),
('SQ000004','Tr0002','S008','Jual','4','20.000'),
('SQ000005','Tr0003','S002','Jual','4,5','45.000'),
('SQ000006','Tr0004','S005','Jual','1','20.000'),
('SQ000007','Tr0004','S010','Jual','1','5.000'),
('SQ000008','Tr0004','S007','Jual','1','15.000'),
('SQ000009','Tr0005','S005','Jual','5','100.000'),
('SQ000010','Tr0005','S002','Beli','4','-40.000'),
('SQ000011','Tr0006','S001','Beli','1','15.000'),
('SQ000012','Tr0007','S003','Beli','5','50.000'),
('SQ000013','Tr0007','S010','Jual','3','-15.000'),
('SQ000014','Tr0008','S002','Jual','4','40.000'),
('SQ000015','Tr0008','S003','Jual','0,4','4.000'),
('SQ000016','Tr0009','S009','Jual','6','30.000'),
('SQ000017','Tr0009','S003','Jual','0,6','6.000'),
('SQ000018','Tr0010','S007','Jual','2','30.000'),
('SQ000019','Tr0010','S004','Jual','0,4','2.000'),
('SQ000020','Tr0011','S002','Jual','10','100.000'),
('SQ000021','Tr0012','S004','Jual','0,4','2.000'),
('SQ000022','Tr0012','S007','Jual','5','75.000'),
('SQ000023','Tr0013','S002','Jual','5','50.000'),
('SQ000024','Tr0014','S008','Jual','4','30.000'),
('SQ000025','Tr0014','S003','Jual','0,3','3.000'),
('SQ000026','Tr0015','S009','Jual','4','20.000'),
('SQ000027','Tr0015','S003','Jual','0,6','6.000'),
('SQ000028','Tr0016','S005','Jual','1','20.000'),
('SQ000029','Tr0016','S003','Jual','0,4','4.000')