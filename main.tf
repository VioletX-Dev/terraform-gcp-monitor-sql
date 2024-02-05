resource "google_monitoring_alert_policy" "cpu_utilization" {
  display_name = "DB CPU Utilization > 50%"
  documentation {
    content = "The $${metric.display_name} of the $${resource.type} $${resource.label.instance_id} in $${resource.project} has exceeded 50% for over 1 minute."
  }
  combiner     = "OR"
  conditions {
    display_name = "Condition 1"
    condition_threshold {
        comparison = "COMPARISON_GT"
        duration = "60s"
        filter     = "metric.type=\"cloudsql.googleapis.com/database/cpu/utilization\""
        threshold_value = "0.5"
        trigger {
          count = "1"
        }
    }
  }

  alert_strategy {
    notification_channel_strategy {
        renotify_interval = "1800s"
        notification_channel_names = var.notification_channels
    }
  }

  notification_channels = var.notification_channels

  user_labels = {
    severity = "warning"
  }

}

resource "google_monitoring_alert_policy" "disk_utilization" {
  display_name = "DB Disk Utilization almost 100Gb"
  documentation {
    content = "The $${metric.display_name} of the $${resource.type} $${resource.label.instance_id} in $${resource.project} has 100Gb. Consider increase this value."
  }
  combiner     = "OR"
  conditions {
    display_name = "Condition 1"
    condition_threshold {
        comparison = "COMPARISON_GT"
        duration = "60s"
        filter     = "metric.type=\"cloudsql.googleapis.com/database/disk/utilization\""
        threshold_value = "90"
        trigger {
          count = "1"
        }
    }
  }

  alert_strategy {
    notification_channel_strategy {
        renotify_interval = "1800s"
        notification_channel_names = var.notification_channels
    }
  }

  notification_channels = var.notification_channels

  user_labels = {
    severity = "warning"
  }

}


resource "google_monitoring_alert_policy" "memory_utilization" {
  display_name = "DB Memory Utilization almost 24Gb"
  documentation {
    content = "The $${metric.display_name} of the $${resource.type} $${resource.label.instance_id} in $${resource.project} has 24Gb. Consider increase this value."
  }
  combiner     = "OR"
  conditions {
    display_name = "Condition 1"
    condition_threshold {
        comparison = "COMPARISON_GT"
        duration = "60s"
        filter     = "metric.type=\"cloudsql.googleapis.com/database/memory/utilization\""
        threshold_value = "20"
        trigger {
          count = "1"
        }
    }
  }

  alert_strategy {
    notification_channel_strategy {
        renotify_interval = "1800s"
        notification_channel_names = var.notification_channels
    }
  }

  notification_channels = var.notification_channels

  user_labels = {
    severity = "warning"
  }

}

resource "google_monitoring_alert_policy" "io_utilization" {
  display_name = "DB IO Utilization "
  documentation {
    content = "The $${metric.display_name} of the $${resource.type} $${resource.label.instance_id} in $${resource.project} higher than 20. Check your application."
  }
  combiner     = "OR"
  conditions {
    display_name = "Condition 1"
    condition_threshold {
        comparison = "COMPARISON_GT"
        duration = "60s"
        filter     = "metric.type=\"cloudsql.googleapis.com/database/disk/write_ops_count\""
        threshold_value = "20"
        trigger {
          count = "1"
        }
    }
  }

  alert_strategy {
    notification_channel_strategy {
        renotify_interval = "1800s"
        notification_channel_names = var.notification_channels
    }
  }

  notification_channels = var.notification_channels

  user_labels = {
    severity = "warning"
  }

}

