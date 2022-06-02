from faker import Faker
import random

book_category = [
    "Fantasy",
    "Adventure",
    "Romance",
    "Contemporary",
    "Dystopian",
    "Mystery",
    "Horror",
    "Thriller",
    "Paranormal",
    "Historical fiction",
    "Science Fiction",
    "Childrens",
    "Memoir",
    "Cooking",
    "Art",
    "Self-help / Personal",
    "Development",
    "Motivational",
    "Health",
    "History",
    "Travel",
    "Guide / How-to",
    "Families & Relationships",
    "Humor",
]

# Faker data
faker_data = Faker('id_ID')

SPACE = """"
"""
# THE BIG 5

# INSERT INTO PENULIS VALUES(1, 'mawar', '0812232132', 'bandung');
query_insert_penulis = "INSERT INTO PENULIS VALUES({}, '{}', '{}', '{}');"

# INSERT INTO ADMINN VALUES(1,'melati', '0812992392392', 'bandung');
query_insert_admin = "INSERT INTO ADMINN VALUES({},'{}', '{}', '{}');"

# INSERT INTO PENERBIT VALUES(3, 'mawar', 'bandung');
query_insert_penerbit = "INSERT INTO PENERBIT VALUES({}, '{}', '{}');"

# INSERT INTO MEMBER VALUES(1, '1232323213243232', 'mawar', '19 mei 1999', 'bandung', '081200023939', 'bandung');
query_insert_member = "INSERT INTO MEMBER VALUES({}, '{}', '{}', '{}', '{}', '{}', '{}');"

# INSERT INTO KATEGORI VALUES(1, 'Fiksi', 'cerita yang tidak nyata', 3);
query_insert_kategori = "INSERT INTO KATEGORI VALUES({}, '{}', '{}', {});"

# ELSE

# INSERT INTO RAK VALUES(3, 'A3', 'lantai 1', '4');
query_insert_rak = "INSERT INTO RAK VALUES({}, '{}', '{}', '{}');"

# INSERT INTO TRANSAKSI VALUES(1,2,1,1,'9 mei 2022', '13 mei 2022',0);
query_insert_transaksi = "INSERT INTO TRANSAKSI VALUES({},{},{},{},'{}', '{}',{});"

# INSERT INTO PENYIMPANAN VALUES(1,2,3);
query_insert_penyimpanan = "INSERT INTO PENYIMPANAN VALUES({},{},{});"

# INSERT INTO BUKU VALUES(3, 1, 1, 2, 'judul', '9000908009', '2000');
query_insert_buku = "INSERT INTO BUKU VALUES({}, {}, {}, {}, '{}', '{}', '{}');"

with open('Tubes Basdat.sql', 'w') as f:
    f.write("""/*KELOMPOK 8*/

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
    );""")

    # Penulis
    f.write("""
    
    """)

    for i in range(20):
        f.write(query_insert_penulis.format(i + 1, faker_data.name(), faker_data.phone_number(), faker_data.city_name()))
        f.write("""
    """)

    # ADMINN
    f.write("""
    
    """)

    for i in range(20):
        f.write(query_insert_admin.format(i + 1, faker_data.name(), faker_data.phone_number(), faker_data.city_name()))
        f.write("""
    """)

    # PENERBIT
    f.write("""
    
    """)

    for i in range(20):
        f.write(query_insert_penerbit.format(i + 1, faker_data.name(), faker_data.city_name()))
        f.write("""
    """)

    # member
    f.write("""
    
    """)

    for i in range(20):
        f.write(query_insert_member.format(i + 1, 12232312, faker_data.name(), faker_data.date_of_birth(), faker_data.city_name(), faker_data.phone_number(), faker_data.city_name()))
        f.write("""
    """)

    # kategori
    f.write("""
    
    """)

    for i in range(20):
        f.write(query_insert_kategori.format(i + 1, book_category[i], faker_data.text(max_nb_chars=25), random.randrange(0,20)))
        f.write("""
    """)

    # RAK
    f.write("""
    
    """)

    for i in range(20):
        f.write(query_insert_rak.format(i + 1, faker_data.text(max_nb_chars=5), faker_data.building_number(), random.randrange(1,20)))
        f.write("""
    """)

    # transaksi
    f.write("""
    
    """)

    for i in range(20):
        f.write(query_insert_transaksi.format(i + 1, random.randrange(1,20),random.randrange(1,20),random.randrange(1,20),faker_data.date(), faker_data.date(), random.random()))
        f.write("""
    """)

    # penyimpanan
    f.write("""
    
    """)

    for i in range(20):
        f.write(query_insert_penyimpanan.format(random.randrange(1,20),random.randrange(1,20),random.randrange(1,20)))
        f.write("""
    """)

    # book
    f.write("""
    
    """)

    for i in range(20):
        f.write(query_insert_buku.format(i + 1, random.randrange(1,20),random.randrange(1,20),random.randrange(1,20),faker_data.text(max_nb_chars=10), faker_data.isbn13(), faker_data.year()))
        f.write("""
    """)


