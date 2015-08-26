USE [RealEstate]
GO

/****** Object:  Table [dbo].[Subcomplexen]    Script Date: 26-8-2015 19:39:33 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Subcomplexen](
	[SubcomplexEigenaar] [nvarchar](4) NOT NULL,
	[SubcomplexComplex] [nvarchar](4) NOT NULL,
	[SubcomplexNummer] [nvarchar](3) NOT NULL,
	[SubcomplexOmschrijving] [nvarchar](max) NULL,
	[SubcomplexBouwjaar] [int] NULL,
	[SubcomplexStraat] [nvarchar](max) NULL,
	[SubcomplexPostcode] [nvarchar](max) NULL,
	[SubcomplexPlaats] [nvarchar](max) NULL,
	[BeheerFinan] [nvarchar](max) NULL,
	[BeheerTech] [nvarchar](max) NULL,
	[SubcomplexBeheerStatus] [nvarchar](max) NULL,
	[LastChanged] [datetime] NOT NULL,
	[RowVersion] [timestamp] NOT NULL,
 CONSTRAINT [PK_dbo.SubComplexes] PRIMARY KEY CLUSTERED 
(
	[SubcomplexEigenaar] ASC,
	[SubcomplexComplex] ASC,
	[SubcomplexNummer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

ALTER TABLE [dbo].[Subcomplexen]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SubComplexes_dbo.Complexes_SubcomplexEigenaar_SubcomplexComplex] FOREIGN KEY([SubcomplexEigenaar], [SubcomplexComplex])
REFERENCES [dbo].[Complexen] ([ComplexEigenaar], [ComplexNummer])
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[Subcomplexen] CHECK CONSTRAINT [FK_dbo.SubComplexes_dbo.Complexes_SubcomplexEigenaar_SubcomplexComplex]
GO

