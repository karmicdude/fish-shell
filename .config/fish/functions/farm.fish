# ~/.config/farm_connection.json
# {
#   "domain": "",
#   "username": ""
#   "password": ""
# }

function farm
    set -l config ~/.config/farm_connection.json
    set -l farm $argv[1]
    if not test -r $config
        set_color red
        echo "No such config file $config" >&2
        set_color normal
        return 1
    end
    jq -r '[.username, .domain, .password] | @tsv' $config | read -l username domain password
    if not pidof anydesk &>/dev/null
        anydesk --local-service &>/dev/null &
        sleep 1
    end
    echo $password | anydesk "$farm.$domain/$username" --with-password &>/dev/null &
end

# vim: ft=fish
