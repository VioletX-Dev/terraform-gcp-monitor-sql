variable "cloudsql_names" {
  description = "CloudSQL database names to create the alarms. `e.g. cloudsql_names = [\"dbinstance_1\", \"dbinstance_2\", \"dbinstance_3\"]`"
  type        = set(string)

}
variable "notification_channels" {
  description = "channel to get all notification from Google Monitoring"
  type        = list(string)
}
