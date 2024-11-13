
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 11/14/2024 02:32:06
-- Generated from EDMX file: E:\Downloads\WebNhac\Test1\Models\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [WebNgheNhac];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK__Playlist__ID_Use__628FA481]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Playlists] DROP CONSTRAINT [FK__Playlist__ID_Use__628FA481];
GO
IF OBJECT_ID(N'[dbo].[FK__Songs__ID_Singer__534D60F1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Songs] DROP CONSTRAINT [FK__Songs__ID_Singer__534D60F1];
GO
IF OBJECT_ID(N'[dbo].[FK_Playlist_Songs_Playlists]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Playlist_Songs] DROP CONSTRAINT [FK_Playlist_Songs_Playlists];
GO
IF OBJECT_ID(N'[dbo].[FK_Playlist_Songs_Songs]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Playlist_Songs] DROP CONSTRAINT [FK_Playlist_Songs_Songs];
GO
IF OBJECT_ID(N'[dbo].[FK__Songs__Type__52593CB81]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Songs] DROP CONSTRAINT [FK__Songs__Type__52593CB81];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Playlists]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Playlists];
GO
IF OBJECT_ID(N'[dbo].[Singers]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Singers];
GO
IF OBJECT_ID(N'[dbo].[Songs]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Songs];
GO
IF OBJECT_ID(N'[dbo].[sysdiagrams]', 'U') IS NOT NULL
    DROP TABLE [dbo].[sysdiagrams];
GO
IF OBJECT_ID(N'[dbo].[Users]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Users];
GO
IF OBJECT_ID(N'[dbo].[Types]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Types];
GO
IF OBJECT_ID(N'[dbo].[Playlist_Songs]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Playlist_Songs];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Playlists'
CREATE TABLE [dbo].[Playlists] (
    [ID_Playlist] int IDENTITY(1,1) NOT NULL,
    [Name_Playlist] nvarchar(50)  NULL,
    [ID_User] int  NULL
);
GO

-- Creating table 'Singers'
CREATE TABLE [dbo].[Singers] (
    [ID_Singer] int IDENTITY(1,1) NOT NULL,
    [NAME] nvarchar(50)  NULL
);
GO

-- Creating table 'Songs'
CREATE TABLE [dbo].[Songs] (
    [ID_Song] int IDENTITY(1,1) NOT NULL,
    [NAME] nvarchar(100)  NULL,
    [ID_Singer] int  NULL,
    [Path_Song] nvarchar(100)  NULL,
    [Path_BackGround] nvarchar(100)  NULL,
    [Type] nvarchar(30)  NULL
);
GO

-- Creating table 'sysdiagrams'
CREATE TABLE [dbo].[sysdiagrams] (
    [name] nvarchar(128)  NOT NULL,
    [principal_id] int  NOT NULL,
    [diagram_id] int IDENTITY(1,1) NOT NULL,
    [version] int  NULL,
    [definition] varbinary(max)  NULL
);
GO

-- Creating table 'Users'
CREATE TABLE [dbo].[Users] (
    [ID_User] int IDENTITY(1,1) NOT NULL,
    [UserName] nvarchar(50)  NULL,
    [PassWord] nvarchar(50)  NULL
);
GO

-- Creating table 'Types'
CREATE TABLE [dbo].[Types] (
    [TypeName] nvarchar(30)  NOT NULL
);
GO

-- Creating table 'Playlist_Songs'
CREATE TABLE [dbo].[Playlist_Songs] (
    [Playlists_ID_Playlist] int  NOT NULL,
    [Songs_ID_Song] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [ID_Playlist] in table 'Playlists'
ALTER TABLE [dbo].[Playlists]
ADD CONSTRAINT [PK_Playlists]
    PRIMARY KEY CLUSTERED ([ID_Playlist] ASC);
GO

-- Creating primary key on [ID_Singer] in table 'Singers'
ALTER TABLE [dbo].[Singers]
ADD CONSTRAINT [PK_Singers]
    PRIMARY KEY CLUSTERED ([ID_Singer] ASC);
GO

-- Creating primary key on [ID_Song] in table 'Songs'
ALTER TABLE [dbo].[Songs]
ADD CONSTRAINT [PK_Songs]
    PRIMARY KEY CLUSTERED ([ID_Song] ASC);
GO

-- Creating primary key on [diagram_id] in table 'sysdiagrams'
ALTER TABLE [dbo].[sysdiagrams]
ADD CONSTRAINT [PK_sysdiagrams]
    PRIMARY KEY CLUSTERED ([diagram_id] ASC);
GO

-- Creating primary key on [ID_User] in table 'Users'
ALTER TABLE [dbo].[Users]
ADD CONSTRAINT [PK_Users]
    PRIMARY KEY CLUSTERED ([ID_User] ASC);
GO

-- Creating primary key on [TypeName] in table 'Types'
ALTER TABLE [dbo].[Types]
ADD CONSTRAINT [PK_Types]
    PRIMARY KEY CLUSTERED ([TypeName] ASC);
GO

-- Creating primary key on [Playlists_ID_Playlist], [Songs_ID_Song] in table 'Playlist_Songs'
ALTER TABLE [dbo].[Playlist_Songs]
ADD CONSTRAINT [PK_Playlist_Songs]
    PRIMARY KEY CLUSTERED ([Playlists_ID_Playlist], [Songs_ID_Song] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [ID_User] in table 'Playlists'
ALTER TABLE [dbo].[Playlists]
ADD CONSTRAINT [FK__Playlist__ID_Use__628FA481]
    FOREIGN KEY ([ID_User])
    REFERENCES [dbo].[Users]
        ([ID_User])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__Playlist__ID_Use__628FA481'
CREATE INDEX [IX_FK__Playlist__ID_Use__628FA481]
ON [dbo].[Playlists]
    ([ID_User]);
GO

-- Creating foreign key on [ID_Singer] in table 'Songs'
ALTER TABLE [dbo].[Songs]
ADD CONSTRAINT [FK__Songs__ID_Singer__534D60F1]
    FOREIGN KEY ([ID_Singer])
    REFERENCES [dbo].[Singers]
        ([ID_Singer])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__Songs__ID_Singer__534D60F1'
CREATE INDEX [IX_FK__Songs__ID_Singer__534D60F1]
ON [dbo].[Songs]
    ([ID_Singer]);
GO

-- Creating foreign key on [Playlists_ID_Playlist] in table 'Playlist_Songs'
ALTER TABLE [dbo].[Playlist_Songs]
ADD CONSTRAINT [FK_Playlist_Songs_Playlists]
    FOREIGN KEY ([Playlists_ID_Playlist])
    REFERENCES [dbo].[Playlists]
        ([ID_Playlist])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Songs_ID_Song] in table 'Playlist_Songs'
ALTER TABLE [dbo].[Playlist_Songs]
ADD CONSTRAINT [FK_Playlist_Songs_Songs]
    FOREIGN KEY ([Songs_ID_Song])
    REFERENCES [dbo].[Songs]
        ([ID_Song])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Playlist_Songs_Songs'
CREATE INDEX [IX_FK_Playlist_Songs_Songs]
ON [dbo].[Playlist_Songs]
    ([Songs_ID_Song]);
GO

-- Creating foreign key on [Type] in table 'Songs'
ALTER TABLE [dbo].[Songs]
ADD CONSTRAINT [FK__Songs__Type__52593CB81]
    FOREIGN KEY ([Type])
    REFERENCES [dbo].[Types]
        ([TypeName])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__Songs__Type__52593CB81'
CREATE INDEX [IX_FK__Songs__Type__52593CB81]
ON [dbo].[Songs]
    ([Type]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------