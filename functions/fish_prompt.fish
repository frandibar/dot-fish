function fish_prompt
  set_color $fish_color_cwd
  echo -n (prompt_pwd)
  printf "%s " (__fish_git_prompt)
  set_color normal
  echo -n '> '
end