# Maintainer: Voronov S.V <voronov.semyon@gmail.com>
# Git Repos: https://github.com/karmicdude/fish-shell
#            https://github.com/karmicdude/dotfiles

fish_add_path $HOME/.local/bin

if type -q zoxide
    zoxide init fish | source
end

if type -q direnv
    direnv hook fish | source
end

if type -q fzf
    fzf_key_bindings
end

if status --is-interactive
    if test -f ~/.kube/config_list
        set -gx KUBECONFIG (paste -sd ':' ~/.kube/config_list)
    end
end

if test -e /opt/asdf-vm/asdf.fish
    source /opt/asdf-vm/asdf.fish
    set -Ux ASDF_DATA_DIR $HOME/.cache/asdf
end

alias bh="fzf_browser_history google-chrome-beta"
alias bcd="fzf_bcd"
