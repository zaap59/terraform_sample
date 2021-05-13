data "http" "example" {
  url = "https://api.coincap.io/v2/assets/bitcoin"

  # Optional request headers
  request_headers = {
    Accept = "application/json"
  }
}

locals {
  data = jsondecode(data.http.example.body).data
  price = local.data.priceUsd
  name = local.data.name
  symbol = local.data.symbol
}

output "Crypto" {
  value = "${local.name}, symbol: ${local.symbol}, priceUsd: ${local.price}"
}
