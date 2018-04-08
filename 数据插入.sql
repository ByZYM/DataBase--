-- 插入球员位置
Insert into Seat(Sno,Sname,Sdescribe) 
values('位置缩写编号','位置名称','位置描述');
Insert into Seat(Sno,Sname,Sdescribe) 
values('SS','大冲锋','掌控节奏，组织进攻');

-- 插入球员
Insert into Player(Pno,Pname,Pheight,Pweight,Sno,Pnationality) 
values('球员编号','球员名字',球员身高,球员体重,'球员位置缩写','球员国家');
Insert into Player(Pno,Pname,Pheight,Pweight,Sno,Pnationality) 
values('1','科比',198,80,'PG','中国');
Insert into Player(Pno,Pname,Pheight,Pweight,Sno,Pnationality) 
values('2','姚明',200,80,'PG','中国');

-- 插入用户信息
Insert into UserD(PlayerPono,Pno,Dpass,Dname,Dmoney) 
values('玩家账号','玩家球员编号','玩家密码','玩家姓名',金钱);
Insert into UserD(PlayerPono,Pno,Dpass,Dname,Dmoney) 
values('1506172','1','1234','张三','2000');

-- 插入售货记录(购买球员)
Insert into SalesOrder(Pono,PlayerPono,Pno,Pquantity,Pdate) 
values('售货单号','玩家账号','球员编号',售货数量,'出售日期');
Insert into SalesOrder(Pono,PlayerPono,Pno,Pquantity,Pdate) 
values('S1','1506172','2',1,'2017-6-7');

-- 插入战绩(开始比赛)
Insert into Military(PlayerPono,Mdate,Mresult,Mmodel,Mgrade) 
values('玩家账号',战绩时间,'胜负结果','游戏模式','游戏评分');
Insert into Military(PlayerPono,Mdate,Mresult,Mmodel,Mgrade) 
values('1506172','2017-6-7','胜利','街头篮球','S');