variable "depends_id" {
  default = ""
}

data "external" "heroku" {
  program = ["ruby", "${path.module}/heroku.rb"]

  query = {
    depends_id = "${var.depends_id}"
  }
}

output "organizations" {
  value = "${split(",", data.external.heroku.result["organizations"])}"
}

output "auth_whoami" {
  value = "${data.external.heroku.result["auth_whoami"]}"
}

output "auth_token" {
  value = "${data.external.heroku.result["auth_token"]}"
}
