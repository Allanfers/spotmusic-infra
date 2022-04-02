resource "google_artifact_registry_repository" "spotmusic-grupo09-artf-repo" {
  provider = google-beta

  location = "us-central1"
  repository_id = "spotmusic-grupo09-artf-repo"
  description = "Imagens Docker"
  format = "DOCKER"
}

resource "google_sql_database_instance" "spotmusic-grupo09-cloudsql" {
  name             = "spotmusic-grupo09-cloudsql"
  database_version = "POSTGRES_11"
  region           = "us-central1"

  settings {
    # Second-generation instance tiers are based on the machine
    # type. See argument reference below.
    tier = "db-f1-micro"
  }
}