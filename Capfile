load 'deploy'
# Uncomment if you are using Rails' asset pipeline
    # load 'deploy/assets'
Dir['vendor/gems/*/recipes/*.rb','vendor/plugins/*/recipes/*.rb'].each { |plugin| load(plugin) }
load 'config/deploy' # remove this line to skip loading any of the default tasks

default_run_options[:pty] = true # For passwordful sudo
ssh_options[:keys] = [File.join(ENV["HOME"], ".ssh", "id_rsa")] # SSH key based authentication
