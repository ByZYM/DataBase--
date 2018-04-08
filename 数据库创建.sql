/* 创建Game数据库*/
-- CREATE DATABASE Game;

use Game;

/* 创建Seat数据表（球员位置表）*/
CREATE TABLE Seat(
	--位置缩写编号 如PG SF
    Sno VARCHAR(20) PRIMARY KEY,
    --位置名称 如控球后卫 小前锋
    Sname VARCHAR(20) NOT NULL,
    --位置描述
    Sdescribe VARCHAR(200) NOT NULL
);



/* 创建Player数据表（球员信息表）*/
CREATE TABLE Player(
	--球员编号
    Pno VARCHAR(20) PRIMARY KEY,
    --球员名字
    Pname VARCHAR(20) NOT NULL,
    --球员身高
    Pheight int,
    --球员体重
    Pweight int,
    --球员位置缩写编号
    Sno VARCHAR(20) FOREIGN KEY REFERENCES Seat,
    --球员国籍
    Pnationality VARCHAR(20)
 );

/* 创建UserD数据表（用户信息表）*/
CREATE TABLE UserD(
	--玩家账号
    PlayerPono VARCHAR(20) PRIMARY KEY,
    --玩家密码
    Dpass VARCHAR(20) NOT NULL,
    --玩家姓名
    Dname VARCHAR(20) NOT NULL,
    --玩家当前球员编号
    Pno VARCHAR(20) FOREIGN KEY REFERENCES Player,
    --玩家金钱
    Dmoney int
);
    
 /* 创建SalesOrder数据表（售货单）*/
CREATE TABLE SalesOrder(
	--售货单号
    Pono VARCHAR(20) PRIMARY KEY,
    --玩家账号
    PlayerPono VARCHAR(20) FOREIGN KEY REFERENCES UserD,
    --球员编号
    Pno VARCHAR(20) FOREIGN KEY REFERENCES Player,
    --售货数量
    Pquantity int,
    --出售日期
    Pdate date
);

/* 创建Military数据表（战绩表）*/
CREATE TABLE Military(
	--玩家账号
    PlayerPono VARCHAR(20) FOREIGN KEY REFERENCES UserD,
    --战绩时间
    Mdate date,
    --胜负结果
    Mresult VARCHAR(20),
    --游戏模式
    Mmodel VARCHAR(20),
    --游戏评分
    Mgrade VARCHAR(20)
);

-- 创建销售量视图
-- 根据球员编号从售货表计算数量
CREATE VIEW Sales_list(pno,quantity)
as
select Pno,SUM(pquantity) from SalesOrder group by Pno;
