
----[ ��Աλ�ñ���� ]----
-- ����λ����д���-�޸�-λ������
update Seat set Sdescribe='�޸�����' where Sno='λ����д���';
update Seat set Sdescribe='777' where Sno='C';

----[ ��Ա����� ]----
-- ������Ա���-�޸�-��Աλ��
update Player set Sno='λ����д���' where Pno='��Ա���';
update Player set Sno='C' where Pno='1';

----[ ��ұ���� ]----
-- ��������˺�-�޸�-����ǳ�
update UserD set Dname='���ǳ�' where PlayerPono='����˺�';
update UserD set Dname='����' where PlayerPono='1506172';

-- ��������˺�-�޸�-�������
update UserD set Dpass='������' where PlayerPono='����˺�';