function tide_update_config
    set -U tide_chruby_bg_color 'normal'
    set -U tide_chruby_color 'CC342D'
    set -U tide_chruby_icon ''
    set -U tide_cmd_duration_bg_color 'normal'
    set -U tide_cmd_duration_color '87875F'
    set -U tide_cmd_duration_decimals '0'
    set -U tide_cmd_duration_icon
    set -U tide_cmd_duration_threshold '3000'
    set -U tide_context_always_display 'false'
    set -U tide_context_bg_color 'normal'
    set -U tide_context_default_color 'D7AF87'
    set -U tide_context_root_color 'D7AF00'
    set -U tide_context_ssh_color 'D7AF87'
    set -U tide_git_bg_color 'normal'
    set -U tide_git_branch_color '5FD700'
    set -U tide_git_conflicted_color 'FF0000'
    set -U tide_git_dirty_color 'D7AF00'
    set -U tide_git_operation_color 'FF0000'
    set -U tide_git_staged_color 'D7AF00'
    set -U tide_git_stash_color '5FD700'
    set -U tide_git_untracked_color '00AFFF'
    set -U tide_git_upstream_color '5FD700'
    set -U tide_jobs_bg_color 'normal'
    set -U tide_jobs_color '5FAF00'
    set -U tide_jobs_icon ''
    set -U tide_kubectl_icon '⎈'
    set -U tide_left_prompt_frame_color '6C6C6C'
    set -U tide_left_prompt_frame_enabled 'false'
    set -U tide_left_prompt_item_separator_diff_color ' '
    set -U tide_left_prompt_item_separator_same_color ' '
    set -U tide_left_prompt_item_separator_same_color_color '949494'
    set -U tide_left_prompt_items 'pwd'  'newline'  'prompt_char'
    set -U tide_left_prompt_pad_items 'false'
    set -U tide_left_prompt_prefix
    set -U tide_left_prompt_suffix ' '
    set -U tide_nvm_bg_color 'normal'
    set -U tide_nvm_color '00AFAF'
    set -U tide_nvm_default_node
    set -U tide_nvm_icon '⬢'
    set -U tide_os_bg_color 'normal'
    set -U tide_os_color 'normal'
    set -U tide_php_bg_color 'normal'
    set -U tide_php_color '875FFF'
    set -U tide_php_icon ''
    set -U tide_print_newline_before_prompt 'true'
    set -U tide_prompt_char_bg_color 'normal'
    set -U tide_prompt_char_failure_color 'FF0000'
    set -U tide_prompt_char_icon '❯'
    set -U tide_prompt_char_success_color '5FD700'
    set -U tide_prompt_char_vi_default_icon '❮'
    set -U tide_prompt_char_vi_insert_icon '❯'
    set -U tide_prompt_char_vi_replace_icon '▶'
    set -U tide_prompt_char_vi_visual_icon 'V'
    set -U tide_prompt_connection_color '6C6C6C'
    set -U tide_prompt_connection_icon
    set -U tide_pwd_bg_color 'normal'
    set -U tide_pwd_color_anchors '00AFFF'
    set -U tide_pwd_color_dirs '0087AF'
    set -U tide_pwd_color_truncated_dirs '8787AF'
    set -U tide_pwd_dir_icon
    set -U tide_pwd_home_icon
    set -U tide_pwd_markers '.bzr' '.citc' '.git' '.hg' '.node-version' '.python-version' '.ruby-version' '.shorten_folder_marker' '.svn' '.terraform Cargo.toml' 'composer.json' 'CVS' 'go.mod ''package.json'
    set -U tide_pwd_truncate_margin '15'
    set -U tide_pwd_unwritable_icon ''
    set -U tide_right_prompt_frame_color '6C6C6C'
    set -U tide_right_prompt_frame_enabled 'false'
    set -U tide_right_prompt_item_separator_diff_color (set_color 454545)' | '
    set -U tide_right_prompt_item_separator_same_color ' '
    set -U tide_right_prompt_item_separator_same_color_color '949494'
    set -U tide_right_prompt_items 'git' 'kubectl' 'status' 'cmd_duration' 'context' 'jobs' 'virtual_env' 'time'
    set -U tide_right_prompt_pad_items 'false'
    set -U tide_right_prompt_prefix ' '
    set -U tide_right_prompt_suffix
    set -U tide_rust_bg_color 'normal'
    set -U tide_rust_color '00AFAF'
    set -U tide_rust_icon ''
    set -U tide_status_failure_bg_color 'normal'
    set -U tide_status_failure_color 'D70000'
    set -U tide_status_failure_icon '✘'
    set -U tide_status_success_bg_color 'normal'
    set -U tide_status_success_color '5FAF00'
    set -U tide_status_success_icon '✔'
    set -U tide_time_bg_color 'normal'
    set -U tide_time_color '5F8787'
    set -U tide_time_format '%T'
    set -U tide_vi_mode_default_bg_color
    set -U tide_vi_mode_default_color
    set -U tide_vi_mode_default_icon
    set -U tide_vi_mode_insert_bg_color
    set -U tide_vi_mode_insert_color
    set -U tide_vi_mode_insert_icon
    set -U tide_vi_mode_replace_bg_color
    set -U tide_vi_mode_replace_color
    set -U tide_vi_mode_replace_icon
    set -U tide_vi_mode_visual_bg_color
    set -U tide_vi_mode_visual_color
    set -U tide_vi_mode_visual_icon
    set -U tide_virtual_env_bg_color 'normal'
    set -U tide_virtual_env_color '00AFAF'
    set -U tide_virtual_env_display_mode 'projectName'
    set -U tide_virtual_env_icon ''
end
