# terraform-heroku-cli-outputs

Outputs values from `heroku` CLI.

## usage

    module "heroku_cli" {
      source  = "matti/cli-outputs/heroku"
    }

    output "auth_token" {
      value = "${module.heroku_cli.auth_token}"
    }

## test

    $ terraform apply
      data.external.heroku: Refreshing state...

      Apply complete! Resources: 0 added, 0 changed, 0 destroyed.

      Outputs:

      auth_token = ccf7b7ba-cc8e-4d9e-b2d0-052ba1f100c2

      auth_whoami = user@example.com

      organizations = [
          firstorg,
          secondorg
      ]
