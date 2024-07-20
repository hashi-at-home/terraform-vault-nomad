# Policy to allow access to monitoring endpoints
# Allow read on metrics on /v1/metrics
path "metrics" {
  capabilities = ["read"]
}
