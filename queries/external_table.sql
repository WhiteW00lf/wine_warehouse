CREATE EXTERNAL TABLE wine_raw.reviews_ext 
OPTIONS (
  format = 'CSV',
  uris = ['gs://wine_data_world/winemag-data_first.csv'],
  skip_leading_rows = 1,
  field_delimiter = ',',
  quote = '"',
  allow_quoted_newlines = TRUE
);

