
----[ ��Աλ�ñ���� ]----
-- ����λ����д���-��ѯ-λ������
select Sno ����λ��,Sname λ������,Sdescribe λ������ from Seat
where Sno='λ����д'
select Sno ����λ��,Sname λ������,Sdescribe λ������ from Seat
where Sno='SS';
select * from Seat;

----[ ��Ա����� ]----
-- ��ѯ��Ա������Ϣ(����λ����Ϣ)
select * from Player,Seat;
-- ����λ����д���-��ѯ-��Ա������Ϣ(����λ����Ϣ)
select * from Player,Seat where Player.Sno='PG';
-- ���ݹ���-��ѯ-��Ա��Ϣ
select * from Player where Pnationality='�й�'

----[ ��ұ���� ]----
-- ��ѯȫ���û���Ϣ
select * from UserD;
-- �����û��˺�-��ѯ-�û���Ϣ
select * from UserD where PlayerPono='�û��˺�'
select * from UserD where PlayerPono='1506172'

----[ �ۻ������ ]----
-- ��������˺�-��ѯ-�ۻ���Ϣ
select * from SalesOrder where PlayerPono='����˺�';
select * from SalesOrder where PlayerPono='1506172';
--������Ա����-��ѯ-��������
select SUM(Pquantity) �������� from SalesOrder where Pno=(Select Pno from Player where Pname='��Ա����');
select SUM(Pquantity) �������� from SalesOrder where Pno=(Select Pno from Player where Pname='Ҧ��');

----[ ս������� ]----
-- ��������˺�-��ѯ-���ս��
select * from Military where PlayerPono='����˺�';
select * from Military where PlayerPono='1506172';
-- �����������-��ѯ-���ս��
select * from Military where PlayerPono=
(select PlayerPono from UserD where Dname='�������');
select * from Military where PlayerPono=
(select PlayerPono from UserD where Dname='����');
-- ��������˺ź�ָ������-��ѯ-���ս��
select * from Military where PlayerPono='����˺�' and Mdate='ս������';
select * from Military where PlayerPono='1506172' and Mdate='2017-6-7';
-- ����������ֺ�ָ������-��ѯ-���ս��
select * from Military where PlayerPono=
(select PlayerPono from UserD where Dname='�������') and Mdate='ս������';
select * from Military where PlayerPono=
(select PlayerPono from UserD where Dname='����') and Mdate='2017-6-7';

----[ ��������ͼ���� ]----
--��ѯ������Ա����������
select pno ��Ա���,quantity �������� from Sales_list;