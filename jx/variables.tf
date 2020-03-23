// ----------------------------------------------------
// Required Variables
// ----------------------------------------------------
variable "gcp_project" {
  description = "The name of the GCP project"
  type = string
  default ="labs-252012"
}

// ----------------------------------------------------------------------------
// Optional Variables
// ----------------------------------------------------------------------------
variable "cluster_name" {
  description = "Name of the K8s cluster to create"
  type        = string
  default     = "jenkins-x"
}

variable "zone" {
  description = "Zone in which to create the cluster"
  type        = string
  default     = "europe-west3-b"
}

variable "jenkins_x_namespace" {
  description = "K8s namespace to install Jenkins X in"
  type        = string
  default     = "jx"
}


// storage
variable "enable_log_storage" {
  description = "Flag to enable or disable storage of build logs in a cloud bucket"
  type        = bool
  default     = true
}

variable "enable_report_storage" {
  description = "Flag to enable or disable storage of build reports in a cloud bucket"
  type        = bool
  default     = true
}

variable "enable_repository_storage" {
  description = "Flag to enable or disable storage of artifacts in a cloud bucket"
  type        = bool
  default     = true
}

variable "force_destroy" {
  description = "Flag to determine whether storage buckets get forcefully destroyed"
  type        = bool
  default     = false
}

variable "parent_domain" {
  description = "The parent domain to be allocated to the cluster"
  type        = string
  default     = ""
}

variable "tls_email" {
  description = "Email used by Let's Encrypt. Required for TLS when parent_domain is specified."
  type        = string
  default     = ""
}



// ----------------------------------------------------------------------------
// cluster configuration
// ----------------------------------------------------------------------------
variable "node_machine_type" {
  description = "Node type for the K8s cluster"
  type        = string
  default     = "n1-standard-2"
}

variable "min_node_count" {
  description = "Minimum number of cluster nodes"
  type        = number
  default     = 3
}

variable "max_node_count" {
  description = "Maximum number of cluster nodes"
  type        = number
  default     = 5
}

variable "node_preemptible" {
  description = "Use preemptible nodes"
  type        = bool
  default     = false
}

variable "node_disk_size" {
  description = "Node disk size in GB"
  type        = string
  default     = "100"
}
