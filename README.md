# Evaluación Práctica PostgreSQL  
## Sistema de Reporte de Fallos en Pizarras Electrónicas

Proyecto de práctica para el Diplomado de administración de base de datos e inteligencia de negocios.  
Incluye diseño físico, integridad referencial, triggers, optimización e instrucciones de mantenimiento en PostgreSQL.

---

## Tecnologías
- PostgreSQL 17 (Docker)
- pgAdmin 4 (Docker)
- Docker Compose

---

## Estructura del proyecto

```text
diplomado-postgres/
├── docker-compose.yml
└── sql-init/
    ├── 01_create_pizarras.sql
    ├── 02_create_tecnicos.sql
    ├── 03_create_reportes.sql
    ├── 04_constraints.sql
    ├── 05_triggers.sql
    ├── 06_alter.sql
    ├── 07_indexes.sql
    ├── 08_insert_pizarras.sql
    ├── 09_insert_tecnicos.sql
    ├── 10_insert_reportes.sql
    ├── 11_select.sql
    ├── 12_maintenance.sql
    └── 13_comments.sql
```

> Los scripts en `sql-init/` se ejecutan automáticamente por orden alfabético al inicializar PostgreSQL por primera vez.

---

## Mapeo por módulos de la evaluación

### Módulo 1: Creación de objetos e integridad
- `01_create_pizarras.sql`
- `02_create_tecnicos.sql`
- `03_create_reportes.sql`
- `04_constraints.sql`
- `05_triggers.sql`

### Módulo 2: Evolución y optimización
- `06_alter.sql`
- `07_indexes.sql`

### Datos de prueba y validación
- `08_insert_pizarras.sql`
- `09_insert_tecnicos.sql`
- `10_insert_reportes.sql`
- `11_select.sql`

### Módulo 3: Mantenimiento
- `12_maintenance.sql`

### Módulo 4: Documentación de metadatos
- `13_comments.sql`

---

## Levantar el entorno

Desde la carpeta del proyecto:

```powershell
docker compose up -d
```

Servicios:
- PostgreSQL: `localhost:5434`
- pgAdmin: `http://localhost:5050`

Credenciales (según `docker-compose.yml`):
- **PostgreSQL**
  - User: `postgres`
  - Password: `admin123`
  - DB: `midb`
- **pgAdmin**
  - Email: `admin@admin.com`
  - Password: `admin123`

---

## Reinicializar la base de datos (ejecutar scripts otra vez)

```powershell
docker compose down -v
docker compose up -d
```

> `down -v` elimina el volumen `pgdata`.  
> Si no se elimina, los scripts de `sql-init` no se vuelven a ejecutar.

---

## Evidencia técnica incluida

- Integridad referencial con:
  - `ON DELETE CASCADE` en relación con `pizarras`
  - `ON DELETE SET NULL` en relación con `tecnicos`
- Trigger `AFTER INSERT` + función PL/pgSQL para actualizar estado de pizarra a **'En Reparación'**
- Índices para columnas `fecha` e `id_tecnico`
- `VACUUM ANALYZE` para limpieza y actualización de estadísticas
- `COMMENT ON` para documentación de catálogo

---

## Notas
- Proyecto académico con enfoque en buenas prácticas de ingeniería de scripts SQL.
- Se recomienda usar commits por módulo y tags de versión para trazabilidad.# Evaluación Práctica PostgreSQL  
## Sistema de Reporte de Fallos en Pizarras Electrónicas (UJI)

Proyecto de práctica para el Diplomado de administración de base de datos e inteligencia de negocios.  
Incluye diseño físico, integridad referencial, triggers, optimización e instrucciones de mantenimiento en PostgreSQL.

---

## Tecnologías
- PostgreSQL 17 (Docker)
- pgAdmin 4 (Docker)
- Docker Compose

---

## Estructura del proyecto

```text
diplomado-postgres/
├── docker-compose.yml
├── README.md
└── sql-init/
    ├── SCRIPTS INDIVIDUALES (Detallado, paso a paso)
    ├── 01_create_pizarras.sql
    ├── 02_create_tecnicos.sql
    ├── 03_create_reportes.sql
    ├── 04_constraints.sql
    ├── 05_triggers.sql
    ├── 06_alter.sql
    ├── 07_indexes.sql
    ├── 08_insert_pizarras.sql
    ├── 09_insert_tecnicos.sql
    ├── 10_insert_reportes.sql
    ├── 11_select.sql
    ├── 12_maintenance.sql
    └── 13_comments.sql
    │
    ├── SCRIPTS GENERALES (Por módulo, completos)
    ├── MOD1_CREACION_OBJETOS.sql
    ├── MOD2_EVOLUCION_ESQUEMA.sql
    ├── MOD3_MANTENIMIENTO.sql
    ├── MOD4_DOCUMENTACION.sql
    └── DATA_INSERTS.sql
```

> Los scripts en `sql-init/` se ejecutan automáticamente por orden alfabético al inicializar PostgreSQL por primera vez.

---

## Mapeo por módulos de la evaluación

### ✅ Módulo 1: Creación de objetos e integridad referencial
**Scripts individuales:**
- `01_create_pizarras.sql` - Tabla de pizarras con CHECK
- `02_create_tecnicos.sql` - Tabla de técnicos
- `03_create_reportes.sql` - Tabla de reportes de fallos
- `04_constraints.sql` - Foreign Keys (CASCADE, SET NULL)
- `05_triggers.sql` - Trigger AFTER INSERT + función PL/pgSQL

**Script general:** `MOD1_CREACION_OBJETOS.sql`

---

### ✅ Módulo 2: Evolución y optimización del esquema
**Scripts individuales:**
- `06_alter.sql` - Agregar columna `nivel_prioridad` con CHECK
- `07_indexes.sql` - Índices en `fecha` e `id_tecnico`

**Script general:** `MOD2_EVOLUCION_ESQUEMA.sql`

---

### ✅ Módulo 3: Mantenimiento rutinario
**Scripts individuales:**
- `12_maintenance.sql` - VACUUM ANALYZE

**Script general:** `MOD3_MANTENIMIENTO.sql`

---

### ✅ Módulo 4: Documentación y metadatos
**Scripts individuales:**
- `13_comments.sql` - COMMENT ON (tablas y columnas)

**Script general:** `MOD4_DOCUMENTACION.sql` (comentarios ampliados)

---

### 📊 Datos de prueba y validación
**Scripts individuales:**
- `08_insert_pizarras.sql` - 2 pizarras
- `09_insert_tecnicos.sql` - 2 técnicos
- `10_insert_reportes.sql` - 2 reportes + trigger
- `11_select.sql` - Validación con SELECT (incluyendo JOIN)

**Script general:** `DATA_INSERTS.sql`

---

## Levantar el entorno

Desde la carpeta del proyecto:

```powershell
docker compose up -d
```

Servicios disponibles:
- **PostgreSQL**: `localhost:5434`
- **pgAdmin**: `http://localhost:5050`

Credenciales (según `docker-compose.yml`):
- **PostgreSQL**
  - User: `postgres`
  - Password: `admin123`
  - DB: `midb`
- **pgAdmin**
  - Email: `admin@admin.com`
  - Password: `admin123`

---

## Cómo usar los scripts

### Opción A: Ejecución automática (Docker)
Los 18 scripts (`01-13` + `MOD1-MOD4` + `DATA`) se ejecutan automáticamente en orden alfabético.

```powershell
docker compose up -d
# Los scripts se cargan en: 01, 02, 03... MOD1, MOD2, MOD3, MOD4, DATA
```

### Opción B: Ejecutar módulo a módulo (manual en pgAdmin)
1. Abre **pgAdmin** (`http://localhost:5050`)
2. Conecta a PostgreSQL
3. Abre **Query Tool**
4. Ejecuta solo el módulo que necesites:
   - `MOD1_CREACION_OBJETOS.sql`
   - `MOD2_EVOLUCION_ESQUEMA.sql`
   - `MOD3_MANTENIMIENTO.sql`
   - `MOD4_DOCUMENTACION.sql`
   - `DATA_INSERTS.sql`

### Opción C: Prueba individual (step-by-step)
Ejecuta los scripts `01` a `13` de forma aislada para entender cada paso:
```sql
-- Ejecuta primero:
\i 01_create_pizarras.sql
\i 02_create_tecnicos.sql
\i 03_create_reportes.sql
-- ... etc
```

---

## Reinicializar la base de datos (ejecutar scripts otra vez)

```powershell
docker compose down -v
docker compose up -d
```

> `down -v` elimina el volumen `pgdata`.  
> Sin esto, los scripts de `sql-init` no se vuelven a ejecutar (PostgreSQL detecta que ya existen).

---

## Evidencia técnica incluida

✅ **Módulo 1: Integridad y Lógica Programable**
- Tablas con constraints `CHECK`
- Foreign Keys con reglas:
  - `ON DELETE CASCADE` en relación con `pizarras`
  - `ON DELETE SET NULL` en relación con `tecnicos`
- Trigger `AFTER INSERT` que ejecuta función PL/pgSQL
- Actualización dinámica de estado a **'En Reparación'**

✅ **Módulo 2: Evolución y Optimización**
- `ALTER TABLE` para agregar `nivel_prioridad` NUMERIC(1,0)
- Restricción CHECK (1-5)
- Índices en `fecha` e `id_tecnico` para optimizar consultas

✅ **Módulo 3: Mantenimiento**
- `VACUUM ANALYZE` para limpieza de tuplas muertas
- Actualización de estadísticas para el Planificador de Consultas

✅ **Módulo 4: Documentación**
- `COMMENT ON` en tablas y columnas
- Metadatos para independencia lógica-física

---

## Validación de datos

Al ejecutar el script `DATA_INSERTS.sql` (o `11_select.sql`), verás:

```
===== PIZARRAS =====
 id_pizarra |  ubicacion  |    estado
────────────┼─────────────┼──────────────────
          1 | Aula 101    | En Reparación
          2 | Aula 102    | En Reparación

===== TECNICOS =====
 id_tecnico |    nombre     |  especialidad
────────────┼───────────────┼────────────────
          1 | Juan Pérez    | Electrónica
          2 | María López   | Hardware

===== REPORTES =====
 id_reporte |    fecha   | descripcion | id_pizarra | id_tecnico | nivel_prioridad
────────────┼────────────┼─────────────┼────────────┼────────────┼─────────────────
          1 | 2026-03-23 | No enciende |          1 |          1 |               3
          2 | 2026-03-23 | Pantalla... |          2 |          2 |               5

===== REPORTE COMPLETO (JOIN) =====
 id_reporte |    fecha   | descripcion |  ubicacion  |    estado      |    tecnico     | nivel_prioridad
────────────┼────────────┼─────────────┼─────────────┼────────────────┼────────────────┼─────────────────
          1 | 2026-03-23 | No enciende | Aula 101    | En Reparación  | Juan Pérez     |               3
          2 | 2026-03-23 | Pantalla... | Aula 102    | En Reparación  | María López    |               5
```

---

## Notas importantes

- **PostgreSQL vs Oracle**: Los scripts usan sintaxis PostgreSQL (no `CASCADE CONSTRAINTS`, sino `CASCADE`)
- **Triggers**: El trigger se ejecuta **AFTER INSERT** para garantizar que el reporte ya existe en la BD
- **FOR EACH ROW**: Necesario porque cada inserción actualiza su pizarra específica
- **Índices**: Balancean el coste de lectura (Index Scan) vs escritura (INSERT/UPDATE)
- **VACUUM ANALYZE**: Esencial en bases de datos con alta volatilidad

---

## Git (flujo profesional)

```powershell
git add .
git commit -m "Añade evaluación PostgreSQL: 4 módulos + scripts generales"
git tag -a v1.0 -m "Entrega Módulos 1-4 completos"
git push origin main --tags
```

---

## Contacto / Autor
**Estudiantes**: Adilman Isaí Portillo Cerón - PC18035 |  Oscar Alejandro Bonilla Cortez - BC18010
**Asignatura**: Diplomado de administración de base de datos e inteligencia de negocios  
**Universidad**: Universidad de El Salvador (UES)  
**Referencia**: Mercedes Marqués - Bases de datos (ISBN: 978-84-693-0146-3)

---

## Diagrama Entidad Relación
<img width="1536" height="1024" alt="ERDcorto" src="https://github.com/user-attachments/assets/be4fcc07-fb9f-48cd-8632-da586c4d5bfe" />


