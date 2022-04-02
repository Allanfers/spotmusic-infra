resource "google_artifact_registry_repository" "spotmusic-grupo09-artf-repo" {
  provider = google-beta

  location = "us-central1"
  repository_id = "spotmusic-grupo09-artf-repo"
  description = "Imagens Docker"
  format = "DOCKER"
}

resource "google_sql_database_instance" "spotmusic-grupo09-cloudsql-tf" {
  name             = "spotmusic-grupo09-cloudsql-tf"
  database_version = "MYSQL_8_0"
  region           = "us-central1"

  settings {
    # Second-generation instance tiers are based on the machine
    # type. See argument reference below.
    tier = "db-f1-micro"
  }

  deletion_protection  = "false"

}
