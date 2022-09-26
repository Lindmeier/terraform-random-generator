# ------------------------------------------------------------------------------
# Output Parameter
# ------------------------------------------------------------------------------

output "official_name" {
  value       = random_id.official_name.b64_std
  description = "official Name for the ressources"
}
