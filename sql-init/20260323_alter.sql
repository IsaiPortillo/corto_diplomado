ALTER TABLE reportes_fallos
ADD COLUMN nivel_prioridad NUMERIC(1,0),
ADD CONSTRAINT chk_prioridad CHECK (nivel_prioridad BETWEEN 1 AND 5);