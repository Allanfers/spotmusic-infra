resource "google_app_engine_application" "app" {
  project     = "hackathon-6aso-grupo-09"
  location_id = "us-central"
}

resource "google_artifact_registry_repository" "spotmusic-grupo09-artf-repo" {
  provider = google-beta

  location = "us-central1"
  repository_id = "spotmusic-grupo09-artf-repo"
  description = "Imagens Docker"
  format = "DOCKER"
}