-- ������Աλ��
Insert into Seat(Sno,Sname,Sdescribe) 
values('λ����д���','λ������','λ������');
Insert into Seat(Sno,Sname,Sdescribe) 
values('SS','����','�ƿؽ��࣬��֯����');

-- ������Ա
Insert into Player(Pno,Pname,Pheight,Pweight,Sno,Pnationality) 
values('��Ա���','��Ա����',��Ա���,��Ա����,'��Աλ����д','��Ա����');
Insert into Player(Pno,Pname,Pheight,Pweight,Sno,Pnationality) 
values('1','�Ʊ�',198,80,'PG','�й�');
Insert into Player(Pno,Pname,Pheight,Pweight,Sno,Pnationality) 
values('2','Ҧ��',200,80,'PG','�й�');

-- �����û���Ϣ
Insert into UserD(PlayerPono,Pno,Dpass,Dname,Dmoney) 
values('����˺�','�����Ա���','�������','�������',��Ǯ);
Insert into UserD(PlayerPono,Pno,Dpass,Dname,Dmoney) 
values('1506172','1','1234','����','2000');

-- �����ۻ���¼(������Ա)
Insert into SalesOrder(Pono,PlayerPono,Pno,Pquantity,Pdate) 
values('�ۻ�����','����˺�','��Ա���',�ۻ�����,'��������');
Insert into SalesOrder(Pono,PlayerPono,Pno,Pquantity,Pdate) 
values('S1','1506172','2',1,'2017-6-7');

-- ����ս��(��ʼ����)
Insert into Military(PlayerPono,Mdate,Mresult,Mmodel,Mgrade) 
values('����˺�',ս��ʱ��,'ʤ�����','��Ϸģʽ','��Ϸ����');
Insert into Military(PlayerPono,Mdate,Mresult,Mmodel,Mgrade) 
values('1506172','2017-6-7','ʤ��','��ͷ����','S');