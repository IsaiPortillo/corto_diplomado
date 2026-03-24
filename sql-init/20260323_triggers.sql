CREATE OR REPLACE FUNCTION actualizar_estado_pizarra()
RETURNS TRIGGER AS $$
BEGIN
    UPDATE pizarras
    SET estado = 'En Reparación'
    WHERE id_pizarra = NEW.id_pizarra;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_actualizar_estado
AFTER INSERT ON reportes_fallos
FOR EACH ROW
EXECUTE FUNCTION actualizar_estado_pizarra();