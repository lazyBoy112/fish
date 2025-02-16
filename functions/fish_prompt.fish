function fish_prompt
  set -l cl_red_0 'E01E37'
  set -l cl_red_1 'A11D33'
  set -l cl_red_2 '641220'
  set -l cl_blue_0 '98C1D9'
  set -l cl_orange_0 'F4A261'
  set -l cl_green_0 '004B23'
  set -l cl_green_1 '008000'
  set -l cl_green_2 '70E000'
  set -l last_status $status
  set -g __fish_git_prompt_color_prefix -o -i 'E0FBFC'
  set -g __fish_git_prompt_color_suffix -o -i 'E0FBFC'
  set -g __fish_git_prompt_color_branch -o -i 'BBD0FF'
  set -g __fish_git_prompt_show_informative_status 1
  set_color white
  if set -q VIRTUAL_ENV; and set -q PYENV_VERSION
    printf '(%s)' $PYENV_VERSION
  end
  set_color -o $cl_blue_0
  printf '%s' (whoami)
  set_color normal
  set_color -i white
  printf ' on'
  set_color normal
  set_color -o $cl_orange_0
  printf ' %s' (prompt_pwd)
  printf '%s' (fish_vcs_prompt)
  if test $last_status -ne 0
    set_color -o -i $cl_red_1
    printf '  '
  else
    set_color -o $cl_green_0
    printf ' >'
    set_color -o $cl_green_1
    printf '>'
    set_color -o $cl_green_2
    printf '> '
  end
end
