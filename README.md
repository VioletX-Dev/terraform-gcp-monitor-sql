# GCP CloudSQL Alarms

This module creates Google Monitor alarms, if the condiction matches a notification is hipped to given notification channels.

## Usage:

```
module "example" {
    source = "github.com/VioletX-Dev/terraform-gcp-monitor-sql?ref=main"

    notification_channels = "production-alerts"
    cloudsql_names        = ["rds_1", "rds_2", "rds_3"]

}
```

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.4.6 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_monitoring_alert_policy.cpu_utilization](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy) | resource |
| [google_monitoring_alert_policy.disk_utilization](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy) | resource |
| [google_monitoring_alert_policy.io_utilization](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy) | resource |
| [google_monitoring_alert_policy.memory_utilization](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cloudsql_names"></a> [cloudsql\_names](#input\_cloudsql\_names) | CloudSQL database names to create the alarms. `e.g. cloudsql_names = ["dbinstance_1", "dbinstance_2", "dbinstance_3"]` | `set(string)` | n/a | yes |
| <a name="input_notification_channels"></a> [notification\_channels](#input\_notification\_channels) | channel to get all notification from Google Monitoring | `list(string)` | n/a | yes |

## Outputs

No outputs.