-- ==========================================
-- DATOS: INSERTS Y VALIDACIÓN
-- ==========================================

\i /docker-entrypoint-initdb.d/08_insert_pizarras.sql
\i /docker-entrypoint-initdb.d/09_insert_tecnicos.sql
\i /docker-entrypoint-initdb.d/10_insert_reportes.sql
\i /docker-entrypoint-initdb.d/11_select.sql

\echo '✓ Datos inseridos y validados'