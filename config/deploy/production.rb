set :stage, :production

# server-based syntax
# ======================
# Defines a single server with a list of roles and multiple properties.
# You can define all roles on a single server, or split them:

server '162.243.134.31', user: 'root', roles: %w{app db web}, my_property: :my_value
server '162.243.134.31', user: 'root', roles: %w{app web}, other_property: :other_value
server '162.243.134.31', user: 'root', roles: %w{db}


# Custom SSH Options
# ==================
# You may pass any option but keep in mind that net/ssh understands a
# limited set of options, consult the Net::SSH documentation.
# http://net-ssh.github.io/net-ssh/classes/Net/SSH.html#method-c-start
#
# Global options
# --------------
server '162.243.134.31', user: 'root', roles: %w{web app}

set :ssh_options, {
  keys: [File.join(ENV["HOME"], ".ssh", "deployserver")],
  forward_agent: true,
  auth_methods: %w(publickey)
}
#
# The server-based syntax can be used to override options:
# ------------------------------------
# server 'example.com',
#   user: 'user_name',
#   roles: %w{web app},
#   ssh_options: {
#     user: 'user_name', # overrides user setting above
#     keys: %w(/home/user_name/.ssh/id_rsa),
#     forward_agent: false,
#     auth_methods: %w(publickey password)
#     # password: 'please use keys'
#   }
