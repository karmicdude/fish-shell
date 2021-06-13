function fish_title
    if set -l git_dir (git rev-parse --show-toplevel 2>/dev/null)
        echo " "(basename $git_dir)
    else if type -q SSH_CLIENT
        echo (hostname)
    else
        echo "fish"
    end
end

# vim: ft=fish
