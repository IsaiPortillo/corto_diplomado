\echo '===== PIZARRAS ====='
SELECT * FROM pizarras;

\echo '===== TECNICOS ====='
SELECT * FROM tecnicos;

\echo '===== REPORTES ====='
SELECT * FROM reportes_fallos;

\echo '===== REPORTE COMPLETO ====='
SELECT
    r.id_reporte,
    r.fecha,
    r.descripcion,
    p.ubicacion,
    p.estado,
    t.nombre AS tecnico,
    r.nivel_prioridad
FROM reportes_fallos r
JOIN pizarras p ON r.id_pizarra = p.id_pizarra
LEFT JOIN tecnicos t ON r.id_tecnico = t.id_tecnico;