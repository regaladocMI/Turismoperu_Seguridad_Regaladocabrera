USE TURISMOPERU_RARC;
GO

IF OBJECT_ID('RARC.cliente_importacion', 'U') IS NOT NULL
    DROP TABLE RARC.cliente_importacion;
GO

CREATE TABLE RARC.cliente_importacion
(
    Documento        VARCHAR(20),
    Nombres          VARCHAR(100),
    ApellidoPaterno  VARCHAR(100),
    ApellidoMaterno  VARCHAR(100)
);
GO

-- Registros incompletos
SELECT *
FROM RARC.cliente_importacion
WHERE Documento IS NULL
   OR Nombres IS NULL
   OR ApellidoPaterno IS NULL;
GO

-- Duplicados dentro del archivo
SELECT Documento, COUNT(*) AS Cantidad
FROM RARC.cliente_importacion
GROUP BY Documento
HAVING COUNT(*) > 1;
GO

-- Documentos que ya existen en persona
SELECT ci.*
FROM RARC.cliente_importacion ci
INNER JOIN RARC.persona p
    ON p.numero_documento = ci.Documento;
GO


/* ============================================================
   REGISTROS VALIDOS PARA INSERCION
   Se excluyen duplicados y documentos ya existentes.
   ============================================================ */

SELECT ci.*
FROM RARC.cliente_importacion ci
WHERE ci.Documento IS NOT NULL
  AND ci.Nombres IS NOT NULL
  AND ci.ApellidoPaterno IS NOT NULL
  AND NOT EXISTS (
      SELECT 1
      FROM RARC.persona p
      WHERE p.numero_documento = ci.Documento
  )
  AND ci.Documento IN (
      SELECT Documento
      FROM RARC.cliente_importacion
      GROUP BY Documento
      HAVING COUNT(*) = 1
  );
GO