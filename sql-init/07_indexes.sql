CREATE INDEX IF NOT EXISTS idx_fecha_reportes
ON reportes_fallos(fecha);

CREATE INDEX IF NOT EXISTS idx_tecnico_reportes
ON reportes_fallos(id_tecnico);