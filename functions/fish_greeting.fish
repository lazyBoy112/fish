function fish_greeting
  set -l ram_info (free --mega | grep Mem)

  set -l cl_red_0 'E01E37'
  set -l cl_red_1 'A11D33'
  set -l cl_red_2 '641220'
  set -l cl_blue_0 '98C1D9'
  set -l cl_orange_0 'F4A261'
  set -l cl_green_0 '004B23'
  set -l cl_green_1 '008000'
  set -l cl_green_2 '70E000'
  set -l total_ram (echo $ram_info | awk '{print $2}')
  set -l used_ram (echo $ram_info | awk '{print $3}')
  set -l percent (math --scale=1 "($used_ram / $total_ram) * 100")
  set -l dateInfo (date)
  echo (set_color -i -o $cl_green_1)'MemInfo:' (set_color normal)(set_color -i $cl_blue_0)$percent
  echo (set_color -i -o $cl_green_1)'Date:' (set_color normal)(set_color -i $cl_blue_0)$dateInfo
  set_color normal
end
