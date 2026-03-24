DROP TABLE IF EXISTS tecnicos CASCADE;

CREATE TABLE tecnicos (
    id_tecnico SERIAL PRIMARY KEY,
    nombre VARCHAR(50),
    especialidad VARCHAR(50)
);