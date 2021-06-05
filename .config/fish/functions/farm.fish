# ~/.config/farm_connection.json
# {
#   "domain": "",
#   "username": ""
#   "password": ""
# }

function farm
    set -l config ~/.config/farm_connection.json
    set -l farm $argv[1]
    set -l domain (jq -r '.domain' $config)
    set -l username (jq -r '.username' $config)
    if test -r $config
        jq -r '.password' $config | anydesk "$farm.$domain/$username" --with-password &>/dev/null
    end
end

# vim: ft=fish
