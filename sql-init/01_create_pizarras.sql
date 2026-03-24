DROP TABLE IF EXISTS pizarras CASCADE;

CREATE TABLE pizarras (
    id_pizarra SERIAL PRIMARY KEY,
    ubicacion VARCHAR(50),
    estado VARCHAR(20) CHECK (estado IN ('Operativa', 'En Reparación', 'Fuera de Servicio'))
);