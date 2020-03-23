// ----------------------------------------------------------------------------
// Setup GCloud Service Accounts
//
// https://www.terraform.io/docs/providers/google/r/google_service_account.html
// https://www.terraform.io/docs/providers/google/r/google_project_iam.html#google_project_iam_member
// ----------------------------------------------------------------------------
// Build controller
resource "google_service_account" "build_controller_sa" {
  provider     = google
  account_id   = "${var.cluster_name}-bc"
  display_name = substr("Build controller service account for cluster ${var.cluster_name}", 0, 100)               
}

resource "google_project_iam_member" "build_controller_sa_storage_object_admin_binding" {
  provider = google
  role     = "roles/storage.objectAdmin"
  member   = "serviceAccount:${google_service_account.build_controller_sa.email}"
}

resource "google_project_iam_member" "build_controller_sa_storage_admin_binding" {
  provider = google
  role     = "roles/storage.admin"
  member   = "serviceAccount:${google_service_account.build_controller_sa.email}"
}


