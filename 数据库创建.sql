/* ����Game���ݿ�*/
-- CREATE DATABASE Game;

use Game;

/* ����Seat���ݱ���Աλ�ñ�*/
CREATE TABLE Seat(
	--λ����д��� ��PG SF
    Sno VARCHAR(20) PRIMARY KEY,
    --λ������ �������� Сǰ��
    Sname VARCHAR(20) NOT NULL,
    --λ������
    Sdescribe VARCHAR(200) NOT NULL
);



/* ����Player���ݱ���Ա��Ϣ��*/
CREATE TABLE Player(
	--��Ա���
    Pno VARCHAR(20) PRIMARY KEY,
    --��Ա����
    Pname VARCHAR(20) NOT NULL,
    --��Ա���
    Pheight int,
    --��Ա����
    Pweight int,
    --��Աλ����д���
    Sno VARCHAR(20) FOREIGN KEY REFERENCES Seat,
    --��Ա����
    Pnationality VARCHAR(20)
 );

/* ����UserD���ݱ��û���Ϣ��*/
CREATE TABLE UserD(
	--����˺�
    PlayerPono VARCHAR(20) PRIMARY KEY,
    --�������
    Dpass VARCHAR(20) NOT NULL,
    --�������
    Dname VARCHAR(20) NOT NULL,
    --��ҵ�ǰ��Ա���
    Pno VARCHAR(20) FOREIGN KEY REFERENCES Player,
    --��ҽ�Ǯ
    Dmoney int
);
    
 /* ����SalesOrder���ݱ��ۻ�����*/
CREATE TABLE SalesOrder(
	--�ۻ�����
    Pono VARCHAR(20) PRIMARY KEY,
    --����˺�
    PlayerPono VARCHAR(20) FOREIGN KEY REFERENCES UserD,
    --��Ա���
    Pno VARCHAR(20) FOREIGN KEY REFERENCES Player,
    --�ۻ�����
    Pquantity int,
    --��������
    Pdate date
);

/* ����Military���ݱ�ս����*/
CREATE TABLE Military(
	--����˺�
    PlayerPono VARCHAR(20) FOREIGN KEY REFERENCES UserD,
    --ս��ʱ��
    Mdate date,
    --ʤ�����
    Mresult VARCHAR(20),
    --��Ϸģʽ
    Mmodel VARCHAR(20),
    --��Ϸ����
    Mgrade VARCHAR(20)
);

-- ������������ͼ
-- ������Ա��Ŵ��ۻ����������
CREATE VIEW Sales_list(pno,quantity)
as
select Pno,SUM(pquantity) from SalesOrder group by Pno;
