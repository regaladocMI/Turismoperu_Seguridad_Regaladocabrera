/* ============================================================
   CREACIÓN DE LOGINS - TURISMOPERU_RARC
   Autor: Alexander Regalado Cabrera
   ============================================================ */

USE master;
GO

-- Administrador
IF SUSER_ID('turismo_admin') IS NULL
BEGIN
    CREATE LOGIN turismo_admin
    WITH PASSWORD = 'Cambiar_Admin#2026!';
END;
GO

-- Vendedor
IF SUSER_ID('turismo_vendedor') IS NULL
BEGIN
    CREATE LOGIN turismo_vendedor
    WITH PASSWORD = 'Cambiar_Vendedor#2026!';
END;
GO

-- Analista
IF SUSER_ID('turismo_analista') IS NULL
BEGIN
    CREATE LOGIN turismo_analista
    WITH PASSWORD = 'Cambiar_Analista#2026!';
END;
GO