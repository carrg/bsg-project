# BSG Project – Pipeline inmobiliario en GCP con GCS, Data Fusion y BigQuery

## Objetivo
Construir un pipeline de datos en GCP para simular la integración de información inmobiliaria proveniente de fuentes tipo Oracle ERP y Salesforce CRM.  
Los datos se almacenan en Google Cloud Storage como Data Lake, se transforman en Cloud Data Fusion y se cargan en BigQuery para su análisis.

---

## Arquitectura
Fuentes simuladas → GCS (Data Lake - raw) → Data Fusion (ETL) → BigQuery (Data Warehouse)

---

## Herramientas
- Google Cloud Storage (GCS)
- Cloud Data Fusion
- BigQuery
- GitHub

---

## Fuentes de datos
- `customers.csv` → clientes
- `properties.csv` → propiedades
- `salesforce_opportunities.csv` → oportunidades del CRM
- `oracle_transactions.csv` → transacciones del ERP
- `sales_notes.txt` → información no estructurada

---

## Flujo del proceso
1. Carga de datos en GCS (capa raw)
2. Ingesta y transformación básica en Cloud Data Fusion
3. Carga de datos en BigQuery
4. Validación mediante consultas SQL

---

## Estructura del Data Lake
Se definió una estructura basada en capas:

- `raw/` → datos originales sin transformación  
- `processed/` → capa prevista para datos transformados (no utilizada en este MVP)

---

## Pipeline implementado
Se implementó un pipeline ETL funcional para la fuente `customers`, con el siguiente flujo:

- lectura desde GCS  
- transformación básica en Data Fusion  
- carga en BigQuery  

Este diseño es replicable para el resto de las fuentes.

---

## Resultado
Se cargó exitosamente la información en la tabla:

`bsg_project_dw.customers`

permitiendo su consulta y análisis en BigQuery.

---

## Consulta de validación

```sql
SELECT COUNT(*) AS total_registros
FROM `bsg-project-492522.bsg_project_dw.customers`;