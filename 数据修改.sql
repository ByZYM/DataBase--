
----[ 球员位置表操作 ]----
-- 根据位置缩写编号-修改-位置描述
update Seat set Sdescribe='修改描述' where Sno='位置缩写编号';
update Seat set Sdescribe='777' where Sno='C';

----[ 球员表操作 ]----
-- 根据球员编号-修改-球员位置
update Player set Sno='位置缩写编号' where Pno='球员编号';
update Player set Sno='C' where Pno='1';

----[ 玩家表操作 ]----
-- 根据玩家账号-修改-玩家昵称
update UserD set Dname='新昵称' where PlayerPono='玩家账号';
update UserD set Dname='张四' where PlayerPono='1506172';

-- 根据玩家账号-修改-玩家密码
update UserD set Dpass='新密码' where PlayerPono='玩家账号';