USE [master]
GO
/****** Object:  Login [WIN-J62N4IAPRD4\Administrator]    Script Date: 06/04/2011 10:41:40 ******/
DROP LOGIN [WIN-J62N4IAPRD4\Administrator]
GO
CREATE LOGIN [WIN-J62N4IAPRD4\Administrator] FROM WINDOWS WITH DEFAULT_DATABASE=[insideWordDb], DEFAULT_LANGUAGE=[us_english]
GO
