USE [master]
GO
/****** Object:  Database [Hospital_Noche]    Script Date: 26/10/2021 8:05:18 p. m. ******/
CREATE DATABASE [Hospital_Noche]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Hospital_Noche', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Hospital_Noche.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Hospital_Noche_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Hospital_Noche_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Hospital_Noche] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Hospital_Noche].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Hospital_Noche] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Hospital_Noche] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Hospital_Noche] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Hospital_Noche] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Hospital_Noche] SET ARITHABORT OFF 
GO
ALTER DATABASE [Hospital_Noche] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Hospital_Noche] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Hospital_Noche] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Hospital_Noche] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Hospital_Noche] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Hospital_Noche] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Hospital_Noche] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Hospital_Noche] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Hospital_Noche] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Hospital_Noche] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Hospital_Noche] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Hospital_Noche] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Hospital_Noche] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Hospital_Noche] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Hospital_Noche] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Hospital_Noche] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Hospital_Noche] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Hospital_Noche] SET RECOVERY FULL 
GO
ALTER DATABASE [Hospital_Noche] SET  MULTI_USER 
GO
ALTER DATABASE [Hospital_Noche] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Hospital_Noche] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Hospital_Noche] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Hospital_Noche] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Hospital_Noche] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Hospital_Noche] SET QUERY_STORE = OFF
GO
USE [Hospital_Noche]
GO
/****** Object:  Table [dbo].[Tblcita]    Script Date: 26/10/2021 8:05:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tblcita](
	[cod_cita] [varchar](10) NOT NULL,
	[fecha] [date] NOT NULL,
	[hora] [time](7) NOT NULL,
	[id_paciente] [varchar](15) NOT NULL,
	[id_medico] [varchar](15) NOT NULL,
	[valor] [int] NOT NULL,
	[observaciones] [varchar](max) NOT NULL,
	[activo] [bit] NOT NULL,
 CONSTRAINT [PK__Tblcita__D4DE53701A320F13] PRIMARY KEY CLUSTERED 
(
	[cod_cita] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tblmedico]    Script Date: 26/10/2021 8:05:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tblmedico](
	[id_medico] [varchar](15) NOT NULL,
	[nom_medico] [varchar](40) NOT NULL,
	[especialidad] [varchar](25) NOT NULL,
	[activo] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_medico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tblpaciente]    Script Date: 26/10/2021 8:05:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tblpaciente](
	[id_paciente] [varchar](15) NOT NULL,
	[nom_paciente] [varchar](40) NOT NULL,
	[dir_paciente] [varchar](40) NOT NULL,
	[tel_paciente] [varchar](10) NOT NULL,
	[activo] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_paciente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Tblcita] ([cod_cita], [fecha], [hora], [id_paciente], [id_medico], [valor], [observaciones], [activo]) VALUES (N'01', CAST(N'2021-10-26' AS Date), CAST(N'19:57:00' AS Time), N'131313', N'101010', 45000, N'Tiene fiebre', 1)
INSERT [dbo].[Tblmedico] ([id_medico], [nom_medico], [especialidad], [activo]) VALUES (N'101010', N'Luis Quintero', N'Cirujano', 1)
INSERT [dbo].[Tblpaciente] ([id_paciente], [nom_paciente], [dir_paciente], [tel_paciente], [activo]) VALUES (N'131313', N'Helena Bustamante', N'Cll 52b # 30 - 05', N'4444848', 1)
ALTER TABLE [dbo].[Tblcita] ADD  CONSTRAINT [DF__Tblcita__activo__286302EC]  DEFAULT ((1)) FOR [activo]
GO
ALTER TABLE [dbo].[Tblmedico] ADD  DEFAULT ((1)) FOR [activo]
GO
ALTER TABLE [dbo].[Tblpaciente] ADD  DEFAULT ((1)) FOR [activo]
GO
ALTER TABLE [dbo].[Tblcita]  WITH CHECK ADD  CONSTRAINT [FK__Tblcita__id_medi__2B3F6F97] FOREIGN KEY([id_medico])
REFERENCES [dbo].[Tblmedico] ([id_medico])
GO
ALTER TABLE [dbo].[Tblcita] CHECK CONSTRAINT [FK__Tblcita__id_medi__2B3F6F97]
GO
ALTER TABLE [dbo].[Tblcita]  WITH CHECK ADD  CONSTRAINT [pk_cita] FOREIGN KEY([id_paciente])
REFERENCES [dbo].[Tblpaciente] ([id_paciente])
GO
ALTER TABLE [dbo].[Tblcita] CHECK CONSTRAINT [pk_cita]
GO
/****** Object:  StoredProcedure [dbo].[sp_anular_cita]    Script Date: 26/10/2021 8:05:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_anular_cita]
@pcod_cita varchar(10),
@ptipo bit
as
	if @ptipo=0
		update Tblcita set activo=0 where cod_cita=@pcod_cita
	else
		update Tblcita set activo=1 where cod_cita=@pcod_cita
GO
/****** Object:  StoredProcedure [dbo].[sp_anular_medico]    Script Date: 26/10/2021 8:05:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_anular_medico]
@pid_medico varchar(15),
@ptipo bit 
as
	if @ptipo=0
		update Tblmedico set activo=0 where id_medico=@pid_medico
	else
		update Tblmedico set activo=1 where id_medico=@pid_medico
GO
/****** Object:  StoredProcedure [dbo].[sp_anular_paciente]    Script Date: 26/10/2021 8:05:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_anular_paciente]
@pid_paciente varchar(15),
@ptipo bit 
as
	if @ptipo=0
		update Tblpaciente set activo=0 where id_paciente=@pid_paciente
	else
		update Tblpaciente set activo=1 where id_paciente=@pid_paciente
GO
/****** Object:  StoredProcedure [dbo].[sp_consultar_cita]    Script Date: 26/10/2021 8:05:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_consultar_cita]
@pcod_cita varchar(10)
as
	select * from Tblcita where cod_cita=@pcod_cita
	
	select nom_paciente from Tblpaciente,Tblcita where Tblpaciente.id_paciente=Tblcita.id_paciente and cod_cita=@pcod_cita 
	select nom_medico from Tblmedico,Tblcita where Tblmedico.id_medico=Tblcita.id_medico and cod_cita=@pcod_cita
GO
/****** Object:  StoredProcedure [dbo].[sp_consultar_medico]    Script Date: 26/10/2021 8:05:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_consultar_medico]
@pid_medico varchar(15)
as
	if @pid_medico=''
		select * from Tblmedico
	else
		select * from Tblmedico where id_medico=@pid_medico
GO
/****** Object:  StoredProcedure [dbo].[sp_consultar_paciente]    Script Date: 26/10/2021 8:05:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_consultar_paciente]
@pid_paciente varchar(15)
as
	if @pid_paciente=''
		select * from Tblpaciente
	else
		select * from Tblpaciente where id_paciente=@pid_paciente
GO
/****** Object:  StoredProcedure [dbo].[sp_guardar_cita]    Script Date: 26/10/2021 8:05:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_guardar_cita]
@pcod_cita varchar(10),
@pfecha date,
@phora time,
@pid_paciente varchar(15),
@pid_medico varchar(15),
@pvalor int,
@pobservaciones varchar(max)
as
	if not exists (select cod_cita from Tblcita where cod_cita=@pcod_cita)
		insert into Tblcita(cod_cita,fecha,hora,id_paciente,id_medico,valor,observaciones)
		values(@pcod_cita,@pfecha,@phora,@pid_paciente,@pid_medico,@pvalor,@pobservaciones)
	else
		update Tblcita set fecha=@pfecha,hora=@phora,id_paciente=@pid_paciente,id_medico=@pid_medico,valor=@pvalor,observaciones=@pobservaciones
		where cod_cita=@pcod_cita
GO
/****** Object:  StoredProcedure [dbo].[sp_guardar_medico]    Script Date: 26/10/2021 8:05:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_guardar_medico]
@pid_medico varchar(15), 
@pnom_medico varchar(40), 
@pespecialidad varchar(25)
as
	if not exists(select @pid_medico from Tblmedico where id_medico=@pid_medico)
		insert into Tblmedico(id_medico,nom_medico,especialidad)
		values(@pid_medico,@pnom_medico,@pespecialidad)
	else
		update Tblmedico set @pnom_medico=@pnom_medico,especialidad=@pespecialidad
		where id_medico=@pid_medico
GO
/****** Object:  StoredProcedure [dbo].[sp_guardar_paciente]    Script Date: 26/10/2021 8:05:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_guardar_paciente]
@pid_paciente varchar (15),
@pnom_paciente varchar(40),
@pdir_paciente varchar(40),
@ptel_paciente varchar(10)
as
	if not exists(select id_paciente from Tblpaciente where id_paciente=@pid_paciente)
		insert into Tblpaciente(id_paciente,nom_paciente,dir_paciente,tel_paciente)
		values(@pid_paciente,@pnom_paciente,@pdir_paciente,@ptel_paciente)
	else
		update Tblpaciente set nom_paciente=@pnom_paciente,dir_paciente=@pdir_paciente,
		tel_paciente=@ptel_paciente where id_paciente=@pid_paciente
GO
USE [master]
GO
ALTER DATABASE [Hospital_Noche] SET  READ_WRITE 
GO
