USE [RealEstate]
GO

/****** Object:  Table [dbo].[Verhuureenheden]    Script Date: 26-8-2015 19:39:51 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Verhuureenheden](
	[VheEigenaar] [nvarchar](4) NOT NULL,
	[VheComplex] [nvarchar](4) NOT NULL,
	[VheSubcomplex] [nvarchar](3) NOT NULL,
	[VheNummer] [nvarchar](3) NOT NULL,
	[Beheercode] [nvarchar](20) NOT NULL,
	[VheStraat] [nvarchar](max) NULL,
	[VheHuisnummer] [nvarchar](max) NULL,
	[VheToevoeging] [nvarchar](max) NULL,
	[VhePostcode] [nvarchar](max) NULL,
	[VhePlaats] [nvarchar](max) NULL,
	[VheType] [nvarchar](max) NULL,
	[VhePunten] [int] NULL,
	[VheOmgevingspunten] [decimal](18, 2) NULL,
	[VhePuntenHuurMax] [decimal](18, 2) NOT NULL,
	[VhePuntenDatumBerekening] [datetime] NOT NULL,
	[VhePuntenDatumHerberekening] [datetime] NOT NULL,
	[VheBeheerStatus] [nvarchar](max) NULL,
	[VheEtageAantal] [int] NULL,
	[VheKamersAantal] [int] NULL,
	[VheSlaapkamersAantal] [int] NULL,
	[VheOppervlakte] [int] NULL,
	[VheDwaType] [nvarchar](max) NULL,
	[VheDwaOmschrijving] [nvarchar](max) NULL,
	[VheWozWaarde] [decimal](18, 2) NULL,
	[VheBedragMarkthuur] [decimal](18, 2) NULL,
	[VheEnergielabel] [nvarchar](max) NULL,
	[VheLnpPublicatie] [nvarchar](max) NULL,
	[VheLnpType] [nvarchar](max) NULL,
	[VheLnpOmschrijving] [nvarchar](max) NULL,
	[VheLnpWoningSoort] [nvarchar](max) NULL,
	[VheLnpKavelOppervlakte] [nvarchar](max) NULL,
	[VheDatumBeschikbaar] [datetime] NOT NULL,
	[LastChanged] [datetime] NOT NULL,
	[VheBeheerType] [nvarchar](max) NULL,
	[RowVersion] [timestamp] NOT NULL,
 CONSTRAINT [PK_dbo.Vhes] PRIMARY KEY CLUSTERED 
(
	[VheEigenaar] ASC,
	[VheComplex] ASC,
	[VheSubcomplex] ASC,
	[VheNummer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

ALTER TABLE [dbo].[Verhuureenheden]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Vhes_dbo.SubComplexes_VheEigenaar_VheComplex_VheSubcomplex] FOREIGN KEY([VheEigenaar], [VheComplex], [VheSubcomplex])
REFERENCES [dbo].[Subcomplexen] ([SubcomplexEigenaar], [SubcomplexComplex], [SubcomplexNummer])
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[Verhuureenheden] CHECK CONSTRAINT [FK_dbo.Vhes_dbo.SubComplexes_VheEigenaar_VheComplex_VheSubcomplex]
GO

