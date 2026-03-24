CREATE OR REPLACE FUNCTION actualizar_estado_pizarra()
RETURNS TRIGGER AS $$
BEGIN
    UPDATE pizarras
    SET estado = 'En Reparación'
    WHERE id_pizarra = NEW.id_pizarra;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

DROP TRIGGER IF EXISTS trg_actualizar_estado ON reportes_fallos;

-- FOR EACH ROW: el id de pizarra cambia por cada fila insertada.
-- AFTER INSERT: garantiza que el reporte ya fue persistido antes de actualizar pizarras.
CREATE TRIGGER trg_actualizar_estado
AFTER INSERT ON reportes_fallos
FOR EACH ROW
EXECUTE FUNCTION actualizar_estado_pizarra();