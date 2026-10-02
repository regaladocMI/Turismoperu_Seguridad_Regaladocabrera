/* ============================================================
   CREACIÓN DE USUARIOS EN TURISMOPERU_RARC
   ============================================================ */

USE TURISMOPERU_RARC;
GO

IF USER_ID('turismo_admin') IS NULL
    CREATE USER turismo_admin FOR LOGIN turismo_admin;
GO

IF USER_ID('turismo_vendedor') IS NULL
    CREATE USER turismo_vendedor FOR LOGIN turismo_vendedor;
GO

IF USER_ID('turismo_analista') IS NULL
    CREATE USER turismo_analista FOR LOGIN turismo_analista;
GO