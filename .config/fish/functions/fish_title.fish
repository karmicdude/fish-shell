function fish_title
    # Prprevent unnecessary fish_title callsevent unnecessary fish_title calls
    if set -q _tide_left_prompt_display_var && ! set -q $_tide_left_prompt_display_var
        return
    end
    if set -l git_dir (git rev-parse --show-toplevel 2>/dev/null)
        printf " %s" (basename $git_dir)
    else if type -q SSH_CLIENT
        hostname
    else
        echo  #        
    end
end

# vim: ft=fish
