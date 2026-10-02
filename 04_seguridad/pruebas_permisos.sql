USE TURISMOPERU_RARC;
GO

/* ============================================================
   PRUEBAS DE PERMISOS - ANALISTA
   ============================================================ */

EXECUTE AS USER = 'turismo_analista';
GO

-- Esta consulta DEBE funcionar
SELECT TOP 5 *
FROM RARC.cliente;
GO

-- Esta operación DEBE FALLAR por falta de permiso
INSERT INTO RARC.pago
DEFAULT VALUES;
GO

REVERT;
GO


/* ============================================================
   PRUEBAS DE PERMISOS - VENDEDOR
   ============================================================ */

EXECUTE AS USER = 'turismo_vendedor';
GO

-- Estas consultas DEBEN funcionar
SELECT TOP 5 *
FROM RARC.cliente;

SELECT TOP 5 *
FROM RARC.reserva;
GO

-- Esta operación DEBE FALLAR
DELETE FROM RARC.cliente
WHERE 1 = 0;
GO

REVERT;
GO