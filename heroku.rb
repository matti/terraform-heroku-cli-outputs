require 'json'
params = JSON.parse(STDIN.read)

auth_token = `heroku auth:token`
auth_whoami = `heroku auth:whoami`
organizations = JSON.parse(`heroku orgs --json`)

organization_names = []
for organization in organizations do
  organization_names << organization["name"]
end

result = {
  auth_token: auth_token,
  auth_whoami: auth_whoami,
  organizations: organization_names.join(",")
}

puts result.to_json
