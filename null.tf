resource "null_resource" "test_ressource_preprod" {
  provisioner "local-exec" {
    command = "echo 'PREPRODUCTION'"
  }
  provisioner "local-exec" {
    command = "echo 'Ligne 2'"
  }
  provisioner "local-exec" {
    command = "echo 'Finish PREPRODUCTION'"
  }
}
