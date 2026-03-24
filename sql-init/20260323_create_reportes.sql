DROP TABLE IF EXISTS reportes_fallos CASCADE;

CREATE TABLE reportes_fallos (
    id_reporte SERIAL PRIMARY KEY,
    fecha DATE,
    descripcion VARCHAR(50),
    id_pizarra INT,
    id_tecnico INT
);