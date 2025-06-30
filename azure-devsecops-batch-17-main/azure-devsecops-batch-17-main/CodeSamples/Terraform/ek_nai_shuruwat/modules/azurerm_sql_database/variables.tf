variable "sql_db_name" {}
variable "server_id" {}

resource "azurerm_mssql_database" "sql_db" {
  name         = var.sql_db_name
  server_id    = var.server_id
  collation    = "SQL_Latin1_General_CP1_CI_AS"
  license_type = "LicenseIncluded"
  max_size_gb  = 2
  sku_name     = "S0"
  enclave_type = "VBS"
}