function __get_dir_list -d 'Get a list of directories'
    if type -q fd
        command fd . -t d
    else
        set_color -o red
        echo "It looks like the fd is not installed!"
        set_color -o normal
    end
end

function fzf_cd -d 'cd to a directory using fzf'
    __get_dir_list | fzf --reverse | read -l dir
    test $dir; and cd $dir
    commandline -f repaint
end

# vim: ft=fish
