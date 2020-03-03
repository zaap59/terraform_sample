resource "null_resource" "test_ressource" {
  provisioner "local-exec" {
    command = "echo 'Ligne 1'"
  }
  provisioner "local-exec" {
    command = "echo 'Ligne 2'"
  }
  provisioner "local-exec" {
    command = "echo 'Sleep 15'; sleep 15; echo 'fin sleep 15'"
  }
  provisioner "local-exec" {
    command = "echo 'Finish'"
  }
}


resource "null_resource" "test_var" {
  provisioner "local-exec" {
    command = "echo 'Ligne 1'"
  }
  provisioner "local-exec" {
    command = "echo 'Ligne 2'"
  }
  provisioner "local-exec" {
    command = "echo 'Sleep 15'; sleep 15; echo 'fin sleep 15'"
  }
  provisioner "local-exec" {
    command = "echo 'Finish'"
  }
}
