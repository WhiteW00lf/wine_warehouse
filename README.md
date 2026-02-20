# Wine Reviews Data Warehouse (BigQuery)
## Overview

Built a structured analytics warehouse in Google BigQuery using the Kaggle Wine Reviews dataset.

Goal: Simulate a real analytics engineering workflow from raw ingestion to business-facing marts.

GCS 
  → wine_raw 
    → wine_stg 
      → wine_core 
        → analytics


### wine_raw

- Native ingestion from GCS

- No transformations

### wine_stg

- SAFE_CAST for type enforcement

- Removed NULL price & rating

- Filtered invalid prices (price > 0)

- Standardized text using LOWER(TRIM())

- Preserved review grain

### wine_core (Star Schema)

- fact_wine_reviews

- dim_country

- dim_variety

- dim_winery

- Surrogate keys generated using ROW_NUMBER()

- Fact table validated for row integrity (no duplication, no row loss)

### analytics

- Business-facing analytical tables built using aggregation and window functions.

#### Tech Stack

- Google Cloud Storage

- BigQuery

- SQL