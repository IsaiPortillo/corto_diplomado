ALTER TABLE reportes_fallos
ADD COLUMN IF NOT EXISTS nivel_prioridad NUMERIC(1,0);

DO $$
BEGIN
    IF NOT EXISTS (
        SELECT 1
        FROM pg_constraint
        WHERE conname = 'chk_prioridad'
    ) THEN
        ALTER TABLE reportes_fallos
        ADD CONSTRAINT chk_prioridad CHECK (nivel_prioridad BETWEEN 1 AND 5);
    END IF;
END
$$;