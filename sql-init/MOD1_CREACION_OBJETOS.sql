-- ==========================================
-- MODULO 1: CREACIÓN DE OBJETOS (DDL)
-- ==========================================
-- Ejecución de todos los scripts del Módulo 1

\i /docker-entrypoint-initdb.d/01_create_pizarras.sql
\i /docker-entrypoint-initdb.d/02_create_tecnicos.sql
\i /docker-entrypoint-initdb.d/03_create_reportes.sql
\i /docker-entrypoint-initdb.d/04_constraints.sql
\i /docker-entrypoint-initdb.d/05_triggers.sql

\echo '✓ Módulo 1: Creación de objetos e integridad completado'