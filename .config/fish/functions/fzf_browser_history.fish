function fzf_browser_history
    set -l browser $argv[1]
    set -q browser; or return 1
    set -l history_file "$HOME/.config/$browser/Default/History"
    test -e $history_file; or return 1
    set -l cols (math "floor($COLUMNS / 3)")
    set -l sep '{::}'
    set -l timestamp (date +%s)
    set -l query "
    SELECT
        substr(title, 1, $cols), url
    FROM
        urls
    ORDER BY last_visit_time desc
    "
    cp "$history_file" "/tmp/browser-history.$timestamp"
    sqlite3 --separator $sep "/tmp/browser-history.$timestamp" "$query" \
        | awk -F $sep '{printf "%-'$cols's  \x1b[36m%s\x1b[m\n", $1, $2}' \
        | fzf --reverse --ansi --multi \
        | sed 's#.*\(https*://\)#\1#' | xargs xdg-open &>/dev/null
    rm -f "/tmp/browser-history.$timestamp"
end
