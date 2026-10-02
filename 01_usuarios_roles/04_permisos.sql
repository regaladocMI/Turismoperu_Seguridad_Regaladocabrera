USE TURISMOPERU_RARC;
GO

/* ============================================================
   PERMISOS DEL ROL VENDEDOR
   ============================================================ */

GRANT SELECT, INSERT ON RARC.cliente TO rol_vendedor;
GRANT SELECT, INSERT ON RARC.reserva TO rol_vendedor;

GRANT SELECT ON RARC.alojamiento TO rol_vendedor;
GRANT SELECT ON RARC.habitacion TO rol_vendedor;

DENY DELETE ON RARC.cliente TO rol_vendedor;
DENY DELETE ON RARC.reserva TO rol_vendedor;
GO


/* ============================================================
   PERMISOS DEL ROL ANALISTA
   Solo lectura
   ============================================================ */

GRANT SELECT ON RARC.cliente TO rol_analista;
GRANT SELECT ON RARC.reserva TO rol_analista;
GRANT SELECT ON RARC.pago TO rol_analista;
GRANT SELECT ON RARC.alojamiento TO rol_analista;
GRANT SELECT ON RARC.habitacion TO rol_analista;
GRANT SELECT ON RARC.paquete TO rol_analista;
GRANT SELECT ON RARC.lugar_turistico TO rol_analista;
GO

DENY INSERT, UPDATE, DELETE ON RARC.cliente TO rol_analista;
DENY INSERT, UPDATE, DELETE ON RARC.reserva TO rol_analista;
DENY INSERT, UPDATE, DELETE ON RARC.pago TO rol_analista;
DENY INSERT, UPDATE, DELETE ON RARC.alojamiento TO rol_analista;
DENY INSERT, UPDATE, DELETE ON RARC.habitacion TO rol_analista;
DENY INSERT, UPDATE, DELETE ON RARC.paquete TO rol_analista;
DENY INSERT, UPDATE, DELETE ON RARC.lugar_turistico TO rol_analista;
GO