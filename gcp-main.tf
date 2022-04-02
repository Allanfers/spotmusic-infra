resource "google_artifact_registry_repository" "spotmusic-grupo09-artf-repo" {
  provider = google-beta

  location = "us-central1"
  repository_id = "spotmusic-grupo09-artf-repo"
  description = "Imagens Docker"
  format = "DOCKER"
}

module "cloudsql-mysql" {
  source = "git::ssh://git@github.com:google-terraform-modules/terraform-google-cloudsql.git"

  general = {
    name       = "mydatabase"
    env        = "dev"
    region     = "us-west1"
    db_version = "MYSQL_5_6"
  }

  instance = {
    zone = "b"
  }
}