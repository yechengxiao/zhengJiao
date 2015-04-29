
CREATE TABLE bjxx
(
bjdm char(17) PRIMARY KEY, --班级代号
bjmc varchar(100), -- 班级名称
bjzy varchar(100), -- 班级所在专业
jsid  varchar(50), -- 班主任代号
jsxm varchar(20),  -- 班主任名称
memo varchar(200)
)


CREATE TABLE xsxx
(
xsid  char(17) PRIMARY KEY, --学生id
xh varchar(50), -- 学号
xsxm varchar(20), -- 姓名
xb varchar(4),-- 性别
bjdm varchar(50),-- 班级代号
bjmc varchar(100),-- 班级名称
jsid  varchar(50), -- 班主任代号
jsxm varchar(20),  -- 班主任名称
memo varchar(200)
)

CREATE TABLE jsxx
(
jsid  char(17) PRIMARY KEY, -- 班主任代号
jsxm varchar(20),  -- 班主任名称
lxfs varchar(20), -- 联系方式
xb varchar(4),
bjdm varchar(14), --班级代号
bjmc varchar(100), -- 班级名称
memo varchar(200)
)


CREATE TABLE kfxx(
zyh char(17) PRIMARY KEY,  -- 流水号
bj varchar(40),  -- 班级
xsid varchar(20),--学号
xsxm varchar(10),--学生姓名
kffs float,--扣分分数
kfyy varchar(200),--扣分原因
kfrmc varchar(200),--扣分人名称
kfrq varchar(14),--扣分日期
memo varchar(200)
)
