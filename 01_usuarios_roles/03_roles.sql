USE TURISMOPERU_RARC;
GO

IF DATABASE_PRINCIPAL_ID('rol_vendedor') IS NULL
    CREATE ROLE rol_vendedor;
GO

IF DATABASE_PRINCIPAL_ID('rol_analista') IS NULL
    CREATE ROLE rol_analista;
GO

ALTER ROLE rol_vendedor ADD MEMBER turismo_vendedor;
ALTER ROLE rol_analista ADD MEMBER turismo_analista;
GO

-- El administrador tendrá control sobre la base de datos
ALTER ROLE db_owner ADD MEMBER turismo_admin;
GO