function _tide_item_kubectl
    if not type -q kubectl
        return 1
    end
    if not set -l contexts (kubectl config get-contexts | grep -E '^\*')
        return 1
    end
    echo $contexts | awk '{print $2, $5}' | read -a -l kubectl_status
    # set default values
    set -q tide_kubectl_context_color; or set -l tide_kubectl_context_color (set_color 0084ff)
    set -q tide_kubectl_icon; or set -l tide_kubectl_icon '⎈'
    set -q tide_kubectl_icon_color; or set -l tide_kubectl_icon_color (set_color 0084ff)
    set -q tide_kubectl_ns_color; or set -l tide_kubectl_ns_color (set_color 389fff)
    test -n "$kubectl_status[2]"; or set kubectl_status[2] (set_color 616161)default
    # render kubectl prompt
    printf "%s%s %s %s(%s)" $tide_kubectl_context_color $tide_kubectl_icon $kubectl_status[1] \
        $tide_kubectl_ns_color $kubectl_status[2]
    set_color normal
end
