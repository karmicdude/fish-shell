function fzf_bcd -d 'cd backwards'
    pwd \
    | awk -v RS=/ '/\n/ {exit} {p=p $0 "/"; print p}' \
    | fzf --tac +m -1 -0 \
    | read -l result
    [ -d "$result" ]; and cd $result
    commandline -f repaint
end
