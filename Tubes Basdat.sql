/*KELOMPOK 8*/

CREATE TABLE TRANSAKSi
    (
        id_transaksi INT NOT NULL,
        id_member INT NOT NULL,
        id_admin INT NOT NULL,
        id_buku INT NOT NULL,
        transaksi_tanggal_pinjam DATE,
        transaksi_tanggal_kembali DATE,
        transaksi_denda INT
    );
ALTER TABLE TRANSAKSI ADD CONSTRAINT Transaksi_PK PRIMARY KEY (id_transaksi);

CREATE TABLE MEMBER
    (
        id_member INT NOT NULL,
        member_no_ktp VARCHAR2 (16),
        member_nama VARCHAR2 (20),
        member_tempat_lahir VARCHAR2 (10),
        member_tanggal_lahir DATE,
        member_no_hp VARCHAR2 (11),
        member_alamat VARCHAR2 (50)
    );
AlTER TABLE MEMBERR ADD CONSTRAINT Memberr_PK PRIMARY KEY (id_member);

CREATE TABLE ADMINN 
    (
        id_admin INT NOT NULL,
        admin_nama VARCHAR2 (20),
        admin_no_hp VARCHAR2 (11),
        admin_alamat VARCHAR2 (50)
    );
ALTER TABLE ADMINN ADD CONSTRAINT Adminn_PK PRIMARY KEY (id_admin);

CREATE TABLE BUKU
    (
        id_buku INT NOT NULL,
        id_penerbit INT NOT NULL,
        id_penulis INT NOT NULL,
        id_kategori INT NOT NULL,
        buku_judul VARCHAR2 (50),
        buku_ISBN VARCHAR2 (13),
        buku_tahun_terbit VARCHAR2 (4)
    );
ALTER TABLE BUKU ADD CONSTRAINT Buku_PK PRIMARY KEY (id_buku);

CREATE TABLE PENERBIT
    (
        id_penerbit INT NOT NULL,
        penerbit_nama VARCHAR2 (20),
        penerbit_alamat VARCHAR2 (50)
    );
ALTER TABLE PENERBIT ADD CONSTRAINT Penerbit_PK PRIMARY KEY (id_penerbit);

CREATE TABLE PENULIS
    (
        id_penulis INT NOT NULL,
        penulis_nama VARCHAR2 (50),
        penulis_no_hp VARCHAR2 (11),
        penulis_alamat VARCHAR2 (50)
    );
ALTER TABLE PENULIS ADD CONSTRAINT Penulis_PK PRIMARY KEY (id_penulis);

CREATE TABLE KATEGORI
    (
        id_kategori INT NOT NULL,
        nama_kategori VARCHAR2 (20) NOT NULL,
        kategori_deskripsi VARCHAR2 (50),
        kategori_jumlah INT
    );
ALTER TABLE KATEGORI ADD CONSTRAINT Kategori_PK PRIMARY KEY (id_kategori);
   
CREATE TABLE RAK
    (
        id_rak NUMBER NOT NULL,
        rak_nama VARCHAR2 (20),
        rak_lokasi VARCHAR2 (10),
        rak_baris VARCHAR2 (3)
    );
ALTER TABLE RAK ADD CONSTRAINT Rak_PK PRIMARY KEY (id_rak);

CREATE TABLE PENYIMPANAN
    (
        id_buku NUMBER NOT NULL,
        id_rak NUMBER NOT NULL,
        id_kategori NUMBER NOT NULL
    );
    
    INSERT INTO PENULIS VALUES(1, 'Daniswara Mansur', '+62-937-137-2255', 'Palu');
    INSERT INTO PENULIS VALUES(2, 'Nova Halimah', '+62 (032) 659 0820', 'Pariaman');
    INSERT INTO PENULIS VALUES(3, 'Novi Dabukke', '(049) 853-7837', 'Sungai Penuh');
    INSERT INTO PENULIS VALUES(4, 'Respati Handayani', '+62 (643) 781-1420', 'Tomohon');
    INSERT INTO PENULIS VALUES(5, 'KH. Bahuwarna Marpaung', '(017) 571-1402', 'Binjai');
    INSERT INTO PENULIS VALUES(6, 'Maras Farida', '+62 (474) 196-8788', 'Pagaralam');
    INSERT INTO PENULIS VALUES(7, 'Jaeman Namaga', '0885059805', 'Tebingtinggi');
    INSERT INTO PENULIS VALUES(8, 'Elvin Yulianti', '+62 (01) 409-6706', 'Padangpanjang');
    INSERT INTO PENULIS VALUES(9, 'Kadir Pangestu, S.H.', '(0365) 631 8175', 'Bandar Lampung');
    INSERT INTO PENULIS VALUES(10, 'Eva Tampubolon, S.E.', '+62 (0492) 565 8079', 'Pematangsiantar');
    INSERT INTO PENULIS VALUES(11, 'Eva Wasita, S.Ked', '+62 (0772) 946-9503', 'Subulussalam');
    INSERT INTO PENULIS VALUES(12, 'Rini Simbolon', '+62 (50) 538-1361', 'Tanjungpinang');
    INSERT INTO PENULIS VALUES(13, 'Unjani Hidayat', '+62-697-564-0226', 'Kota Administrasi Jakarta Timur');
    INSERT INTO PENULIS VALUES(14, 'Sutan Jaya Oktaviani, S.H.', '+62 (226) 996 3564', 'Yogyakarta');
    INSERT INTO PENULIS VALUES(15, 'Cager Puspita', '(006) 748 2139', 'Surabaya');
    INSERT INTO PENULIS VALUES(16, 'Farhunnisa Budiyanto, M.Pd', '+62 (0080) 901 1732', 'Purwokerto');
    INSERT INTO PENULIS VALUES(17, 'drg. Nilam Rahayu', '(0663) 598-7020', 'Palopo');
    INSERT INTO PENULIS VALUES(18, 'Kasiyah Melani', '+62-0472-465-6836', 'Bandung');
    INSERT INTO PENULIS VALUES(19, 'Drs. Cinta Mandala', '+62 (063) 129 3097', 'Pagaralam');
    INSERT INTO PENULIS VALUES(20, 'Karen Wastuti', '+62-87-402-9317', 'Blitar');
    
    
    INSERT INTO ADMINN VALUES(1,'Febi Widiastuti', '+62 (066) 516 4983', 'Bitung');
    INSERT INTO ADMINN VALUES(2,'dr. Tirta Maryati, S.E.', '(0016) 921 2497', 'Parepare');
    INSERT INTO ADMINN VALUES(3,'Raditya Aryani', '+62 (97) 364-7357', 'Tanjungbalai');
    INSERT INTO ADMINN VALUES(4,'Laras Prasasta', '+62 (092) 061 6871', 'Cirebon');
    INSERT INTO ADMINN VALUES(5,'Raina Winarsih', '+62-0106-900-5393', 'Tomohon');
    INSERT INTO ADMINN VALUES(6,'Pardi Permata', '(020) 772-1301', 'Tidore Kepulauan');
    INSERT INTO ADMINN VALUES(7,'Jumadi Hariyah', '+62 (64) 345 6098', 'Pontianak');
    INSERT INTO ADMINN VALUES(8,'H. Raditya Hariyah', '+62 (65) 873-9687', 'Bima');
    INSERT INTO ADMINN VALUES(9,'Uli Firmansyah', '+62 (0931) 222-3181', 'Kota Administrasi Jakarta Timur');
    INSERT INTO ADMINN VALUES(10,'drg. Dina Iswahyudi, S.Ked', '084 568 3483', 'Pematangsiantar');
    INSERT INTO ADMINN VALUES(11,'T. Cahyanto Lestari', '0806955192', 'Pematangsiantar');
    INSERT INTO ADMINN VALUES(12,'Lukita Mandasari, S.T.', '+62 (040) 638 7642', 'Sukabumi');
    INSERT INTO ADMINN VALUES(13,'Rahmi Saptono', '084 040 6918', 'Tomohon');
    INSERT INTO ADMINN VALUES(14,'drg. Kartika Narpati', '+62-061-651-3611', 'Tarakan');
    INSERT INTO ADMINN VALUES(15,'Nova Yolanda', '+62 (0862) 203-9180', 'Banjarbaru');
    INSERT INTO ADMINN VALUES(16,'Elon Napitupulu, S.Psi', '+62-008-905-0321', 'Tebingtinggi');
    INSERT INTO ADMINN VALUES(17,'Gara Salahudin', '+62 (060) 730-7035', 'Sukabumi');
    INSERT INTO ADMINN VALUES(18,'Adika Wijayanti', '+62 (367) 823 2932', 'Tasikmalaya');
    INSERT INTO ADMINN VALUES(19,'Lurhur Nugroho', '088 935 7818', 'Depok');
    INSERT INTO ADMINN VALUES(20,'Anita Sihombing', '+62 (050) 110 7356', 'Palangkaraya');
    
    
    INSERT INTO PENERBIT VALUES(1, 'Jindra Latupono', 'Banjarmasin');
    INSERT INTO PENERBIT VALUES(2, 'Puput Nababan', 'Metro');
    INSERT INTO PENERBIT VALUES(3, 'Anom Budiman', 'Cimahi');
    INSERT INTO PENERBIT VALUES(4, 'Ir. Jatmiko Gunarto, M.Pd', 'Prabumulih');
    INSERT INTO PENERBIT VALUES(5, 'Hadi Suryono', 'Tual');
    INSERT INTO PENERBIT VALUES(6, 'Darmana Rahimah, S.Kom', 'Tanjungpinang');
    INSERT INTO PENERBIT VALUES(7, 'Eli Prastuti', 'Sukabumi');
    INSERT INTO PENERBIT VALUES(8, 'Aditya Marpaung', 'Bitung');
    INSERT INTO PENERBIT VALUES(9, 'Digdaya Purnawati', 'Kendari');
    INSERT INTO PENERBIT VALUES(10, 'Nabila Agustina', 'Tangerang Selatan');
    INSERT INTO PENERBIT VALUES(11, 'Kardi Andriani', 'Bandar Lampung');
    INSERT INTO PENERBIT VALUES(12, 'Dasa Habibi', 'Dumai');
    INSERT INTO PENERBIT VALUES(13, 'Vera Mansur', 'Meulaboh');
    INSERT INTO PENERBIT VALUES(14, 'Ir. Galur Susanti, S.E.', 'Metro');
    INSERT INTO PENERBIT VALUES(15, 'Puti Oliva Purwanti, M.Farm', 'Prabumulih');
    INSERT INTO PENERBIT VALUES(16, 'Chelsea Sirait', 'Bau-Bau');
    INSERT INTO PENERBIT VALUES(17, 'Cinthia Prasetya', 'Lubuklinggau');
    INSERT INTO PENERBIT VALUES(18, 'Aditya Haryanto', 'Medan');
    INSERT INTO PENERBIT VALUES(19, 'Gadang Waluyo', 'Pekanbaru');
    INSERT INTO PENERBIT VALUES(20, 'Luluh Winarno', 'Tidore Kepulauan');
    
    
    INSERT INTO MEMBER VALUES(1, '12232312', 'drg. Gaman Safitri', '1986-01-30', 'Tanjungbalai', '(007) 693 8271', 'Binjai');
    INSERT INTO MEMBER VALUES(2, '12232312', 'Winda Firgantoro', '1989-05-31', 'Tidore Kepulauan', '0885266111', 'Lubuklinggau');
    INSERT INTO MEMBER VALUES(3, '12232312', 'H. Jayeng Prakasa, S.Kom', '1906-11-29', 'Padangpanjang', '(017) 829 2251', 'Semarang');
    INSERT INTO MEMBER VALUES(4, '12232312', 'Gangsar Saputra', '1932-05-06', 'Bima', '(0991) 007-3014', 'Bukittinggi');
    INSERT INTO MEMBER VALUES(5, '12232312', 'Cakrajiya Suryono', '1943-07-03', 'Serang', '+62 (075) 528-6553', 'Tanjungpinang');
    INSERT INTO MEMBER VALUES(6, '12232312', 'Nasab Usamah', '1999-11-23', 'Pagaralam', '+62-044-668-7290', 'Blitar');
    INSERT INTO MEMBER VALUES(7, '12232312', 'T. Mujur Hardiansyah', '1977-05-09', 'Padang Sidempuan', '(029) 134 3733', 'Pagaralam');
    INSERT INTO MEMBER VALUES(8, '12232312', 'Ulva Hastuti', '1914-08-19', 'Lhokseumawe', '0891352411', 'Palangkaraya');
    INSERT INTO MEMBER VALUES(9, '12232312', 'Eli Rajata, S.Pt', '1925-07-12', 'Parepare', '(0433) 947-5706', 'Gorontalo');
    INSERT INTO MEMBER VALUES(10, '12232312', 'Elvina Wahyudin', '1922-05-01', 'Tidore Kepulauan', '(004) 863-7126', 'Binjai');
    INSERT INTO MEMBER VALUES(11, '12232312', 'Kadir Aryani', '1957-08-31', 'Pekalongan', '+62-66-288-8090', 'Banda Aceh');
    INSERT INTO MEMBER VALUES(12, '12232312', 'Slamet Wulandari, S.Ked', '1913-02-24', 'Langsa', '+62-514-080-3466', 'Kendari');
    INSERT INTO MEMBER VALUES(13, '12232312', 'Eli Nasyiah', '1951-10-24', 'Jambi', '+62 (027) 280 0062', 'Banjarmasin');
    INSERT INTO MEMBER VALUES(14, '12232312', 'Pia Widiastuti', '2013-03-12', 'Jambi', '(0680) 401-7957', 'Bukittinggi');
    INSERT INTO MEMBER VALUES(15, '12232312', 'Jati Wibowo', '1982-11-03', 'Bima', '0834576025', 'Langsa');
    INSERT INTO MEMBER VALUES(16, '12232312', 'H. Dipa Iswahyudi', '1906-12-20', 'Singkawang', '+62 (14) 655 1563', 'Mataram');
    INSERT INTO MEMBER VALUES(17, '12232312', 'Yance Saptono', '1971-06-09', 'Sibolga', '(0860) 178 5000', 'Bandar Lampung');
    INSERT INTO MEMBER VALUES(18, '12232312', 'Ajiman Kuswoyo', '1934-10-30', 'Padangpanjang', '+62 (74) 962-2027', 'Probolinggo');
    INSERT INTO MEMBER VALUES(19, '12232312', 'Rudi Irawan', '2020-05-13', 'Bukittinggi', '0837180156', 'Sungai Penuh');
    INSERT INTO MEMBER VALUES(20, '12232312', 'Ella Saptono', '1942-11-17', 'Tangerang', '+62 (085) 125 0832', 'Cirebon');
    
    
    INSERT INTO KATEGORI VALUES(1, 'Fantasy', 'Totam a possimus a hic.', 2);
    INSERT INTO KATEGORI VALUES(2, 'Adventure', 'Laborum sit molestiae.', 5);
    INSERT INTO KATEGORI VALUES(3, 'Romance', 'Dolorem ipsa minima.', 11);
    INSERT INTO KATEGORI VALUES(4, 'Contemporary', 'Amet nihil voluptatem.', 11);
    INSERT INTO KATEGORI VALUES(5, 'Dystopian', 'Aliquam non molestias.', 16);
    INSERT INTO KATEGORI VALUES(6, 'Mystery', 'Beatae aliquid et.', 0);
    INSERT INTO KATEGORI VALUES(7, 'Horror', 'Commodi tenetur quia.', 11);
    INSERT INTO KATEGORI VALUES(8, 'Thriller', 'Rem qui nemo sunt.', 17);
    INSERT INTO KATEGORI VALUES(9, 'Paranormal', 'Modi aliquam sunt.', 7);
    INSERT INTO KATEGORI VALUES(10, 'Historical fiction', 'Rem nulla atque ut odit.', 1);
    INSERT INTO KATEGORI VALUES(11, 'Science Fiction', 'Non eligendi dicta ad.', 16);
    INSERT INTO KATEGORI VALUES(12, 'Childrens', 'Modi nostrum atque.', 8);
    INSERT INTO KATEGORI VALUES(13, 'Memoir', 'Ab et aut.', 15);
    INSERT INTO KATEGORI VALUES(14, 'Cooking', 'Illum eos praesentium.', 14);
    INSERT INTO KATEGORI VALUES(15, 'Art', 'Tempora quod occaecati.', 0);
    INSERT INTO KATEGORI VALUES(16, 'Self-help / Personal', 'Fugiat esse dolorum quo.', 6);
    INSERT INTO KATEGORI VALUES(17, 'Development', 'Veniam corrupti est.', 12);
    INSERT INTO KATEGORI VALUES(18, 'Motivational', 'Magnam culpa possimus.', 13);
    INSERT INTO KATEGORI VALUES(19, 'Health', 'Vero numquam esse quo.', 7);
    INSERT INTO KATEGORI VALUES(20, 'History', 'Sequi quis quam eos eum.', 8);
    
    
    INSERT INTO RAK VALUES(1, 'Ex.', '0', '13');
    INSERT INTO RAK VALUES(2, 'Quas.', '928', '11');
    INSERT INTO RAK VALUES(3, 'Aut.', '82', '1');
    INSERT INTO RAK VALUES(4, 'Ex.', '76', '15');
    INSERT INTO RAK VALUES(5, 'Ab.', '92', '18');
    INSERT INTO RAK VALUES(6, 'Quae.', '704', '17');
    INSERT INTO RAK VALUES(7, 'Enim.', '284', '11');
    INSERT INTO RAK VALUES(8, 'Modi.', '96', '7');
    INSERT INTO RAK VALUES(9, 'Ab.', '2', '5');
    INSERT INTO RAK VALUES(10, 'In.', '8', '1');
    INSERT INTO RAK VALUES(11, 'Esse.', '62', '11');
    INSERT INTO RAK VALUES(12, 'Qui.', '26', '13');
    INSERT INTO RAK VALUES(13, 'Enim.', '002', '7');
    INSERT INTO RAK VALUES(14, 'Quod.', '1', '19');
    INSERT INTO RAK VALUES(15, 'Odio.', '3', '3');
    INSERT INTO RAK VALUES(16, 'Ex.', '07', '3');
    INSERT INTO RAK VALUES(17, 'Odio.', '8', '5');
    INSERT INTO RAK VALUES(18, 'Iste.', '1', '13');
    INSERT INTO RAK VALUES(19, 'Nisi.', '3', '8');
    INSERT INTO RAK VALUES(20, 'Enim.', '1', '2');
    
    
    INSERT INTO TRANSAKSI VALUES(1,1,8,4,'1975-01-20', '1996-12-16',0.7255489559305343);
    INSERT INTO TRANSAKSI VALUES(2,18,14,8,'2018-06-29', '1997-04-04',0.8707858990285656);
    INSERT INTO TRANSAKSI VALUES(3,18,4,7,'1996-04-12', '2015-04-08',0.566380366102662);
    INSERT INTO TRANSAKSI VALUES(4,18,8,14,'1976-12-28', '1971-08-16',0.2988267170039749);
    INSERT INTO TRANSAKSI VALUES(5,8,10,9,'1981-09-26', '1998-08-28',0.15850793855599965);
    INSERT INTO TRANSAKSI VALUES(6,6,17,13,'1987-01-16', '1977-06-08',0.18004522487824492);
    INSERT INTO TRANSAKSI VALUES(7,1,14,14,'2005-01-11', '1987-09-16',0.3104670983382377);
    INSERT INTO TRANSAKSI VALUES(8,12,11,19,'2017-07-28', '1971-05-24',0.5819592038352299);
    INSERT INTO TRANSAKSI VALUES(9,13,6,19,'1981-10-01', '2020-04-21',0.4770684952360351);
    INSERT INTO TRANSAKSI VALUES(10,10,10,11,'1972-01-05', '1974-01-07',0.05151066417798145);
    INSERT INTO TRANSAKSI VALUES(11,2,16,19,'1981-12-21', '2020-03-15',0.11719295858234469);
    INSERT INTO TRANSAKSI VALUES(12,13,17,15,'2009-08-25', '1997-01-30',0.49408731062592504);
    INSERT INTO TRANSAKSI VALUES(13,1,11,9,'2003-05-26', '1976-05-09',0.3898034401419177);
    INSERT INTO TRANSAKSI VALUES(14,18,11,16,'2014-11-07', '1970-07-31',0.6029215659944466);
    INSERT INTO TRANSAKSI VALUES(15,5,6,19,'2021-03-28', '2006-10-22',0.7459561322013382);
    INSERT INTO TRANSAKSI VALUES(16,3,2,2,'1973-06-16', '1986-08-23',0.06321678140828468);
    INSERT INTO TRANSAKSI VALUES(17,8,13,19,'2017-03-28', '1980-09-14',0.28094447830268354);
    INSERT INTO TRANSAKSI VALUES(18,13,7,17,'1993-06-22', '1989-10-05',0.7477694995838723);
    INSERT INTO TRANSAKSI VALUES(19,17,19,14,'1970-03-07', '2007-03-11',0.4890371089223444);
    INSERT INTO TRANSAKSI VALUES(20,16,14,15,'1977-01-13', '1983-05-26',0.41582325878118453);
    
    
    INSERT INTO PENYIMPANAN VALUES(19,17,6);
    INSERT INTO PENYIMPANAN VALUES(5,8,3);
    INSERT INTO PENYIMPANAN VALUES(19,1,15);
    INSERT INTO PENYIMPANAN VALUES(6,8,2);
    INSERT INTO PENYIMPANAN VALUES(13,2,7);
    INSERT INTO PENYIMPANAN VALUES(15,11,11);
    INSERT INTO PENYIMPANAN VALUES(9,14,14);
    INSERT INTO PENYIMPANAN VALUES(2,12,6);
    INSERT INTO PENYIMPANAN VALUES(12,7,12);
    INSERT INTO PENYIMPANAN VALUES(1,7,12);
    INSERT INTO PENYIMPANAN VALUES(8,16,7);
    INSERT INTO PENYIMPANAN VALUES(1,16,4);
    INSERT INTO PENYIMPANAN VALUES(16,19,17);
    INSERT INTO PENYIMPANAN VALUES(15,19,18);
    INSERT INTO PENYIMPANAN VALUES(4,15,11);
    INSERT INTO PENYIMPANAN VALUES(9,14,13);
    INSERT INTO PENYIMPANAN VALUES(6,15,1);
    INSERT INTO PENYIMPANAN VALUES(17,19,6);
    INSERT INTO PENYIMPANAN VALUES(8,1,6);
    INSERT INTO PENYIMPANAN VALUES(10,8,15);
    
    
    INSERT INTO BUKU VALUES(1, 18, 5, 9, 'Unde.', '978-0-932405-89-0', '2015');
    INSERT INTO BUKU VALUES(2, 19, 7, 6, 'Officia.', '978-0-08-321063-3', '1988');
    INSERT INTO BUKU VALUES(3, 3, 16, 18, 'Fuga.', '978-0-453-87469-4', '2019');
    INSERT INTO BUKU VALUES(4, 17, 8, 17, 'Modi.', '978-1-65215-137-1', '2011');
    INSERT INTO BUKU VALUES(5, 16, 13, 10, 'Numquam.', '978-1-193-32627-6', '2006');
    INSERT INTO BUKU VALUES(6, 18, 7, 16, 'Beatae.', '978-1-4341-0436-6', '1974');
    INSERT INTO BUKU VALUES(7, 10, 6, 2, 'Vero nam.', '978-0-439-98449-2', '1997');
    INSERT INTO BUKU VALUES(8, 9, 14, 16, 'Inventore.', '978-1-84023-080-2', '2018');
    INSERT INTO BUKU VALUES(9, 12, 5, 6, 'Est.', '978-1-4022-1287-1', '1996');
    INSERT INTO BUKU VALUES(10, 11, 18, 18, 'Ullam.', '978-0-7586-8968-9', '1994');
    INSERT INTO BUKU VALUES(11, 12, 5, 18, 'Id.', '978-0-240-19969-6', '2007');
    INSERT INTO BUKU VALUES(12, 19, 17, 2, 'Rerum non.', '978-0-85179-811-0', '1979');
    INSERT INTO BUKU VALUES(13, 7, 15, 16, 'Ea.', '978-0-375-20106-6', '2020');
    INSERT INTO BUKU VALUES(14, 6, 6, 9, 'Veniam.', '978-0-588-76851-6', '1972');
    INSERT INTO BUKU VALUES(15, 8, 14, 7, 'Ipsum.', '978-1-4676-7066-1', '2008');
    INSERT INTO BUKU VALUES(16, 12, 7, 7, 'Eaque.', '978-1-08-909585-9', '2010');
    INSERT INTO BUKU VALUES(17, 3, 7, 9, 'Ullam.', '978-0-09-772318-1', '1981');
    INSERT INTO BUKU VALUES(18, 7, 15, 15, 'Occaecati.', '978-1-366-47553-4', '1985');
    INSERT INTO BUKU VALUES(19, 13, 5, 10, 'Rem.', '978-1-183-06540-6', '2009');
    INSERT INTO BUKU VALUES(20, 16, 7, 1, 'Corporis.', '978-1-334-15033-3', '2004');
    