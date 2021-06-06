function fish_title
  if set -l git_dir (git rev-parse --show-toplevel 2>/dev/null)
      echo "G:"(basename $git_dir)
  else
      echo $STARSHIP_SHELL
  end
end

# vim: ft=fish
