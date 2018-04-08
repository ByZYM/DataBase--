
----[ 球员位置表操作 ]----
-- 根据位置缩写编号-查询-位置详情
select Sno 所属位置,Sname 位置名称,Sdescribe 位置描述 from Seat
where Sno='位置缩写'
select Sno 所属位置,Sname 位置名称,Sdescribe 位置描述 from Seat
where Sno='SS';
select * from Seat;

----[ 球员表操作 ]----
-- 查询球员完整信息(包含位置信息)
select * from Player,Seat;
-- 根据位置缩写编号-查询-球员完整信息(包含位置信息)
select * from Player,Seat where Player.Sno='PG';
-- 根据国籍-查询-球员信息
select * from Player where Pnationality='中国'

----[ 玩家表操作 ]----
-- 查询全部用户信息
select * from UserD;
-- 根据用户账号-查询-用户信息
select * from UserD where PlayerPono='用户账号'
select * from UserD where PlayerPono='1506172'

----[ 售货表操作 ]----
-- 根据玩家账号-查询-售货信息
select * from SalesOrder where PlayerPono='玩家账号';
select * from SalesOrder where PlayerPono='1506172';
--根据球员名字-查询-销售总量
select SUM(Pquantity) 销售总量 from SalesOrder where Pno=(Select Pno from Player where Pname='球员名字');
select SUM(Pquantity) 销售总量 from SalesOrder where Pno=(Select Pno from Player where Pname='姚明');

----[ 战绩表操作 ]----
-- 根据玩家账号-查询-玩家战绩
select * from Military where PlayerPono='玩家账号';
select * from Military where PlayerPono='1506172';
-- 根据玩家名字-查询-玩家战绩
select * from Military where PlayerPono=
(select PlayerPono from UserD where Dname='玩家名字');
select * from Military where PlayerPono=
(select PlayerPono from UserD where Dname='张四');
-- 根据玩家账号和指定日期-查询-玩家战绩
select * from Military where PlayerPono='玩家账号' and Mdate='战绩日期';
select * from Military where PlayerPono='1506172' and Mdate='2017-6-7';
-- 根据玩家名字和指定日期-查询-玩家战绩
select * from Military where PlayerPono=
(select PlayerPono from UserD where Dname='玩家名字') and Mdate='战绩日期';
select * from Military where PlayerPono=
(select PlayerPono from UserD where Dname='张四') and Mdate='2017-6-7';

----[ 销售量视图操作 ]----
--查询已售球员的总销售量
select pno 球员编号,quantity 销售总量 from Sales_list;