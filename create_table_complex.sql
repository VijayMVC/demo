USE [RealEstate]
GO

/****** Object:  Table [dbo].[Complexen]    Script Date: 26-8-2015 19:39:22 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Complexen](
	[ComplexEigenaar] [nvarchar](4) NOT NULL,
	[ComplexNummer] [nvarchar](4) NOT NULL,
	[ComplexBeheerStatus] [nvarchar](max) NULL,
	[LastChanged] [datetime] NOT NULL,
	[RowVersion] [timestamp] NOT NULL,
 CONSTRAINT [PK_dbo.Complexes] PRIMARY KEY CLUSTERED 
(
	[ComplexEigenaar] ASC,
	[ComplexNummer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

