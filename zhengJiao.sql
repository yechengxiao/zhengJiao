
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



SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[bjxx]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[bjxx](
	[bjdm] [char](17) NOT NULL,
	[bjmc] [varchar](100) NULL,
	[bjzy] [varchar](100) NULL,
	[jsid] [varchar](50) NULL,
	[jsxm] [varchar](20) NULL,
	[memo] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[bjdm] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[xsxx]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[xsxx](
	[xsid] [char](17) NOT NULL,
	[xh] [varchar](50) NULL,
	[xsxm] [varchar](20) NULL,
	[xb] [varchar](4) NULL,
	[bjdm] [varchar](50) NULL,
	[bjmc] [varchar](100) NULL,
	[jsid] [varchar](50) NULL,
	[jsxm] [varchar](20) NULL,
	[memo] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[xsid] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[jsxx]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[jsxx](
	[jsid] [char](17) NOT NULL,
	[jsxm] [varchar](20) NULL,
	[lxfs] [varchar](20) NULL,
	[xb] [varchar](4) NULL,
	[bjdm] [varchar](14) NULL,
	[bjmc] [varchar](100) NULL,
	[memo] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[jsid] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[kfxx]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[kfxx](
	[zyh] [char](17) NOT NULL,
	[bj] [varchar](40) NULL,
	[xsid] [varchar](20) NULL,
	[xsxm] [varchar](10) NULL,
	[kffs] [float] NULL,
	[kfyy] [varchar](200) NULL,
	[kfrmc] [varchar](200) NULL,
	[kfrq] [varchar](14) NULL,
	[memo] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[zyh] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
