
insert into PhysicalItem (ID,Name,Unit,PointCount,Hasmachine) select 10,'800��','��.��',2,1 where not exists (select * from PhysicalItem where id=10)
go

insert into PhysicalItem (ID,Name,Unit,PointCount,Hasmachine) select 11,'1000��','��.��',2,1  where not exists (select * from PhysicalItem where id=11)
go

insert into PhysicalItem (ID,Name,Unit,PointCount,Hasmachine) select 18,'һ��������','��/��',0,1  where not exists (select * from PhysicalItem where id=18)
go

insert into PhysicalItem (ID,Name,Unit,PointCount,Hasmachine) select 15,'��ʵ����','��',1,1  where not exists (select * from PhysicalItem where id=15)
go

insert into PhysicalItem (ID,Name,Unit,PointCount,Hasmachine) select 6,'������Զ','����',0,1  where not exists (select * from PhysicalItem where id=6)
go

insert into PhysicalItem (ID,Name,Unit,PointCount,Hasmachine) select 5,'50��','��',1,1  where not exists (select * from PhysicalItem where id=5)
go

insert into PhysicalItem (ID,Name,Unit,PointCount,Hasmachine) select 12,'һ������������','��/��',0,1  where not exists (select * from PhysicalItem where id=12)
go

insert into PhysicalItem (ID,Name,Unit,PointCount,Hasmachine) select 14,'��������','��',0,1  where not exists (select * from PhysicalItem where id=14)
go

insert into PhysicalItem (ID,Name,Unit,PointCount,Hasmachine) select 13,'400��','��.��',2,1  where not exists (select * from PhysicalItem where id=13)
go

insert into PhysicalItem (ID,Name,Unit,PointCount,Hasmachine) select 7,'��λ��ǰ��','����',1,1  where not exists (select * from PhysicalItem where id=7)
go

insert into PhysicalItem (ID,Name,Unit,PointCount,Hasmachine) select 8,'����','����',1,1  where not exists (select * from PhysicalItem where id=8)
go

insert into PhysicalItem (ID,Name,Unit,PointCount,Hasmachine) select 9,'50�ס�8������','��.��',2,1  where not exists (select * from PhysicalItem where id=9)
go

insert into PhysicalItem (ID,Name,Unit,PointCount,Hasmachine) select 1,'���','����',1,1  where not exists (select * from PhysicalItem where id=1)
go

insert into PhysicalItem (ID,Name,Unit,PointCount,Hasmachine) select 2,'����','����',1,1  where not exists (select * from PhysicalItem where id=2)
go

insert into PhysicalItem (ID,Name,Unit,PointCount,Hasmachine) select 4,'�λ���','����',0,1  where not exists (select * from PhysicalItem where id=4)
go

insert into PhysicalItem (ID,Name,Unit,PointCount,Hasmachine) select 3,'̨�ײ���','��',0,1  where not exists (select * from PhysicalItem where id=3)
go

insert into PhysicalItem (ID,Name,Unit,PointCount,Hasmachine) select 16,'��ɳ��','��',1,1  where not exists (select * from PhysicalItem where id=16)
go

insert into PhysicalItem (ID,Name,Unit,PointCount,Hasmachine) select 17,'25��*2������','��',1,1  where not exists (select * from PhysicalItem where id=17)
go

insert into PhysicalItem (ID,Name,Unit,PointCount,Hasmachine) select 19,'��������','��',2,1  where not exists (select * from PhysicalItem where id=19)
go

insert into PhysicalItem (ID,Name,Unit,PointCount,Hasmachine) select 20,'��������','��',2,1  where not exists (select * from PhysicalItem where id=20)
go

insert into PhysicalItem (ID,Name,Unit,PointCount,Hasmachine) select 21,'�������','��',0,1  where not exists (select * from PhysicalItem where id=21)
go

insert into PhysicalItem (ID,Name,Unit,PointCount,Hasmachine) select 22,'30���߼���','��',0,1  where not exists (select * from PhysicalItem where id=22)
go

insert into PhysicalItem (ID,Name,Unit,PointCount,Hasmachine) select 23,'�������','��',0,1  where not exists (select * from PhysicalItem where id=23)
go

-------2014-12-03  bruce �ڿ���������һ�����ڱ����ֵܷļ��㹫ʽ--------------------------------
Alter table PhysicalProject Add Column TotalFormula nvarchar(1000)
go

-------2014-12-03  bruce ���ֱ�׼������������--------------------------------
Alter table Standard Add Column ProjectID nvarchar(50)
go

--========2014-12-06 bruce ������Ŀ�������ֵ����Сֵ��--------------------------------
alter table PhysicalItem add column Max Decimal(18,4)
go
alter table PhysicalItem add column Min Decimal(18,4)
go

---------------2014-12-6 ��min��max����ֵ----------------------------
update physicalItem set [Max]=9.00 where ID=10 and [Max] is null
go
update physicalItem set [Min]=2.00 where ID=10 and [Min] is null
go
update physicalItem set [Max]=9.00 where ID=11 and [Max] is null
go
update physicalItem set [Min]=2.00 where ID=11 and [Min] is null
go
update physicalItem set [Max]=300 where ID=18 and [Max] is null
go
update physicalItem set [Min]=0 where ID=18 and [Min] is null
go
update physicalItem set [Max]=25.0 where ID=15 and [Max] is null
go
update physicalItem set [Min]=1.0 where ID=15 and [Min] is null
go
update physicalItem set [Max]=400 where ID=6 and [Max] is null
go
update physicalItem set [Min]=50 where ID=6 and [Min] is null
go
update physicalItem set [Max]=20.0 where ID=5 and [Max] is null
go
update physicalItem set [Min]=5.0 where ID=5 and [Min] is null
go
update physicalItem set [Max]=99 where ID=12 and [Max] is null
go
update physicalItem set [Min]=0 where ID=12 and [Min] is null
go
update physicalItem set [Max]=99 where ID=14 and [Max] is null
go
update physicalItem set [Min]=0 where ID=14 and [Min] is null
go
update physicalItem set [Max]=4.00 where ID=13 and [Max] is null
go
update physicalItem set [Min]=0.45 where ID=13 and [Min] is null
go
update physicalItem set [Max]=40 where ID=7 and [Max] is null
go
update physicalItem set [Min]=-30 where ID=7 and [Min] is null
go
update physicalItem set [Max]=100 where ID=8 and [Max] is null
go
update physicalItem set [Min]=1 where ID=8 and [Min] is null
go
update physicalItem set [Max]=4.00 where ID=9 and [Max] is null
go
update physicalItem set [Min]=0.45 where ID=9 and [Min] is null
go
update physicalItem set [Max]=250 where ID=1 and [Max] is null
go
update physicalItem set [Min]=80 where ID=1 and [Min] is null
go
update physicalItem set [Max]=200 where ID=2 and [Max] is null
go
update physicalItem set [Min]=14 where ID=2 and [Min] is null
go
update physicalItem set [Max]=9999 where ID=4 and [Max] is null
go
update physicalItem set [Min]=500 where ID=4 and [Min] is null
go
update physicalItem set [Max]=99 where ID=3 and [Max] is null
go
update physicalItem set [Min]=20 where ID=3 and [Min] is null
go
update physicalItem set [Max]=50 where ID=16 and [Max] is null
go
update physicalItem set [Min]=1 where ID=16 and [Min] is null
go
update physicalItem set [Max]=20 where ID=17 and [Max] is null
go
update physicalItem set [Min]=5 where ID=17 and [Min] is null
go
update physicalItem set [Max]=60 where ID=19 and [Max] is null
go
update physicalItem set [Min]=1 where ID=19 and [Min] is null
go
update physicalItem set [Max]=45 where ID=20 and [Max] is null
go
update physicalItem set [Min]=1 where ID=20 and [Min] is null
go
update physicalItem set [Max]=99 where ID=21 and [Max] is null
go
update physicalItem set [Min]=1 where ID=21 and [Min] is null
go
update physicalItem set [Max]=99 where ID=22 and [Max] is null
go
update physicalItem set [Min]=0 where ID=22 and [Min] is null
go
update physicalItem set [Max]=99 where ID=23 and [Max] is null
go
update physicalItem set [Min]=1 where ID=23 and [Min] is null
go
------2014-12-08 --------------------------------------------
update physicalItem set Name='��λ��ǰ��' where Name='��λ��ǰ��'
go

--------2014-12-10  ѧ����Ϣ������һ�����ڱ���д������------------------
alter table Student add column WriteCardCount int 
go

--------2014-12-13  ѧ����Ϣ������һ�����ڱ���ɼ�����ӡ����------------------
alter table Student add column PrintCount int 
go

------2014-12-15  ���ӱ�����־��-------------------------------------
CREATE TABLE [AlarmInfo] (
  [ID] GUID NOT NULL, 
  [AlarmDateTime] DATETIME NOT NULL, 
  [AlarmType] INT NOT NULL, 
  [AlarmDescr] nvarchar(300), 
  [OperatorID] NVARCHAR(50), 
  CONSTRAINT [] PRIMARY KEY ([ID]))
go


CREATE TABLE [AbsentStudent] (
  [ProjectID] NVARCHAR(50) NOT NULL, 
  [StudentID] NVARCHAR(50) NOT NULL, 
  [Memo] NVARCHAR(50) ,
  CONSTRAINT [] PRIMARY KEY ([ProjectID], [StudentID]))
GO

CREATE TABLE [StudentPhoto] (
  [StudentID] NVARCHAR(50) NOT NULL, 
  [Photo] image ,
  CONSTRAINT [] PRIMARY KEY ([StudentID]))
GO


--------------2014-12-30 ��� ѧ���ɼ�����һ�����������ֶ�,���ڱ���ȱ��,�⿼,�˲����������----
alter table PhysicalScore add column SpecialType int 
go

--------------2014-12-31 ������Ŀ���й�ʽ��,��Щ������ĳɼ���ͨ����ʽ���������--------------
alter table PhysicalItem add column Formula nvarchar(50) 
go

------------2015-3-23 ѧ����Ϣ���������--------------------
alter table Student add column GroupID nvarchar(50)
go

------------2015-4-22 ������Ŀ����һ�����ڱ�ʾ�ɼ�������ģʽ
alter table PhysicalItem add SortMode int 
go

update physicalItem set [SortMode]=1 where ID=10 and [SortMode] is null
go
update physicalItem set [SortMode]=1 where ID=11 and [SortMode] is null
go
update physicalItem set [SortMode]=2 where ID=18 and [SortMode] is null
go
update physicalItem set [SortMode]=2 where ID=15 and [SortMode] is null
go
update physicalItem set [SortMode]=2 where ID=6 and [SortMode] is null
go
update physicalItem set [SortMode]=1 where ID=5 and [SortMode] is null
go
update physicalItem set [SortMode]=2 where ID=12 and [SortMode] is null
go
update physicalItem set [SortMode]=2 where ID=14 and [SortMode] is null
go
update physicalItem set [SortMode]=1 where ID=13 and [SortMode] is null
go
update physicalItem set [SortMode]=2 where ID=7 and [SortMode] is null
go
update physicalItem set [SortMode]=2 where ID=8 and [SortMode] is null
go
update physicalItem set [SortMode]=1 where ID=9 and [SortMode] is null
go
update physicalItem set [SortMode]=2 where ID=4 and [SortMode] is null
go
update physicalItem set [SortMode]=2 where ID=3 and [SortMode] is null
go
update physicalItem set [SortMode]=2 where ID=16 and [SortMode] is null
go
update physicalItem set [SortMode]=1 where ID=17 and [SortMode] is null
go
update physicalItem set [SortMode]=1 where ID=19 and [SortMode] is null
go
update physicalItem set [SortMode]=1 where ID=20 and [SortMode] is null
go
update physicalItem set [SortMode]=2 where ID=21 and [SortMode] is null
go
update physicalItem set [SortMode]=2 where ID=22 and [SortMode] is null
go
update physicalItem set [SortMode]=2 where ID=23 and [SortMode] is null
go


-------2015-4-23 ���Ӹ��Գŵ���Ŀ
insert into PhysicalItem (ID,Name,Unit,PointCount,Hasmachine,[Min],[Max],SortMode) select 70,'һ���Ӹ��Գ�','��/��',0,1,0,900,2 where not exists (select * from PhysicalItem where id=70)
go

--------2015-5-08 ���Ӽ���ָ����Ŀ
insert into PhysicalItem (ID,Name,Unit,PointCount,Hasmachine,[Min],[Max],SortMode,Formula) select 24,'BMIָ��','',1,1,null,null,null,'([����] * 10000)/([���] * [���])' where not exists (select * from PhysicalItem where id=24)
go
insert into PhysicalItem (ID,Name,Unit,PointCount,Hasmachine,[Min],[Max],SortMode,Formula) select 25,'�λ�������ָ��','',1,1,null,null,2,'[�λ���]/[����]' where not exists (select * from PhysicalItem where id=25)
go
insert into PhysicalItem (ID,Name,Unit,PointCount,Hasmachine,[Min],[Max],SortMode,Formula) select 26,'��������ָ��','',1,1,null,null,2,'([����] * 100) / [����]' where not exists (select * from PhysicalItem where id=26)
go

-----2015-5-8 ����һ�������ڱ��濼�Կ�Ŀ���ּܷ���ͣ�ȡ��֮ǰ�ı�ProjectPhysicalItem
CREATE TABLE [ProjectPhysicalItems] (
  [ID] uniqueidentifier NOT NULL, 
  [ProjectID] NVARCHAR(50) NOT NULL, 
  [Grade] int NOT NULL, 
  [PhysicalItems] nvarchar(1000) NULL, 
  [TotalFormula] nvarchar(1000) NULL,
  CONSTRAINT [] PRIMARY KEY ([ID]))
go

--2015-5-13 ���Ӽ���������Ŀ
insert into PhysicalItem (ID,Name,Unit,PointCount,Hasmachine,[Min],[Max],SortMode,Formula) select 71,'��������','',1,1,0,10,2,null where not exists (select * from PhysicalItem where id=71)
go
insert into PhysicalItem (ID,Name,Unit,PointCount,Hasmachine,[Min],[Max],SortMode,Formula) select 72,'��������','',1,1,0,10,2,null where not exists (select * from PhysicalItem where id=72)
go
insert into PhysicalItem (ID,Name,Unit,PointCount,Hasmachine,[Min],[Max],SortMode,Formula) select 73,'100����','��',2,1,5,50,1,null where not exists (select * from PhysicalItem where id=73)
go
insert into PhysicalItem (ID,Name,Unit,PointCount,Hasmachine,[Min],[Max],SortMode,Formula) select 74,'200����','��',2,1,5,100,1,null where not exists (select * from PhysicalItem where id=74)
go
insert into PhysicalItem (ID,Name,Unit,PointCount,Hasmachine,[Min],[Max],SortMode,Formula) select 80,'��Ӧʱ','��',2,1,null,null,1,null where not exists (select * from PhysicalItem where id=80)
go
insert into PhysicalItem (ID,Name,Unit,PointCount,Hasmachine,[Min],[Max],SortMode,Formula) select 81,'��������','��',2,1,null,null,2,null where not exists (select * from PhysicalItem where id=81)
go
insert into PhysicalItem (ID,Name,Unit,PointCount,Hasmachine,[Min],[Max],SortMode,Formula) select 82,'���۵���վ��','��',2,1,null,null,2,null where not exists (select * from PhysicalItem where id=82)
go

--2015-5-14 �ɼ��������޸����ֶ� , �ӷ��ֶ�
alter table PhysicalScore add column Modifier nvarchar(50)
go

alter table PhysicalScore add column Jiafen decimal(18,4)
go

---2015-5-20 ���ֱ�׼����һ���ֶ� �Ƿ��Ǽӷ����ֱ�׼
alter table Standard  add column IsForJiafen bit 
go

--2015-7-4 ѧ����Ϣ�����޸�,�ϴ�����ƽ̨ʱ�������ֶ�
alter table Student add column UpdateDate datetime
go

alter table student add column UploadToCloudDate datetime
go

alter table physicalScore add column UploadToCloudDate datetime
go

---2015-10-19 ���ӵĲ�����Ŀ
insert into PhysicalItem (ID,Name,Unit,PointCount,Hasmachine,[Min],[Max],SortMode,Formula) select 75,'60����','��',2,1,0,30,1,null where not exists (select * from PhysicalItem where id=75)
go
insert into PhysicalItem (ID,Name,Unit,PointCount,Hasmachine,[Min],[Max],SortMode,Formula) select 76,'100�׿���','��',2,1,0,30,1,null where not exists (select * from PhysicalItem where id=76)
go
insert into PhysicalItem (ID,Name,Unit,PointCount,Hasmachine,[Min],[Max],SortMode,Formula) select 77,'110�׿���','��',2,1,0,30,1,null where not exists (select * from PhysicalItem where id=77)
go
insert into PhysicalItem (ID,Name,Unit,PointCount,Hasmachine,[Min],[Max],SortMode,Formula) select 79,'4*100����','��',2,1,0,120,1,null where not exists (select * from PhysicalItem where id=79)
go

---2015-10-27 �����˶�����Ҫ��һЩ����ֶ�
alter table physicalScore add column SportsID nvarchar(50)
go

CREATE TABLE [Sports] (
  [ID] uniqueidentifier NOT NULL,  
  [Name] NVARCHAR(50) nOT NULL,
  [PhysicalItem] tinyint Not NULL, 
  [MatchDate] DateTime null,
  [Memo] nvarchar(200) NULL,
  CONSTRAINT [] PRIMARY KEY ([ID]))
go

CREATE TABLE [SportsStudentPair] (
  [ID] uniqueidentifier NOT NULL, 
  [SportsID] uniqueidentifier NOT NULL, 
  [StudentID] NVARCHAR(50) NOT NULL, 
  [GroupID] nvarchar(50), 
  [Channel] nvarchar(50), 
  [Score] decimal(18,4), 
  [Rank] tinyint,
  [State] TINYINT NOT NULL, 
  [Memo] NVARCHAR(200) NULL,
  CONSTRAINT [] PRIMARY KEY ([ID]))
go






















