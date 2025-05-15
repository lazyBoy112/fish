if status is-interactive
    # Commands to run in interactive sessions can go here
end

if not contains /usr/local/bin $PATH
  set PATH /usr/local/bin $PATH
end

if not contains /home/linuxbrew/.linuxbrew/bin
  set PATH /home/linuxbrew/.linuxbrew/bin $PATH
end


if [ -f $HOME/.config/fish/aliases/main.fish ] 
  source $HOME/.config/fish/aliases/main.fish
end

if [ -f $HOME/.config/fish/functions/custom.fish ] 
  source $HOME/.config/fish/functions/custom.fish
end
# if [ -f $HOME/.config/fish/functions/fish_prompt.fish ] 
#   source $HOME/.config/fish/functions/fish_prompt.fish
# end
if [ -d /home/linuxbrew/.linuxbrew/opt/sdkman-cli/libexec ]
  if test $(which java)
    set --export JAVA_HOME (dirname (dirname (readlink -f (which java))))
    set -gx PATH $JAVA_HOME $PATH
  end
end

# if [ -d /snap/bin ]
#   set -gx PATH /snap/bin $PATH
# end
if not contains /snap/bin $PATH
  set -gx PATH /snap/bin $PATH
end

# nvm 
# fisher install edc/bass
function nvm
  bass source $HOME/.nvm/nvm.sh --no-use ';' nvm $argv
end

if not contains ~/Android/Sdk/platform-tools $PATH 
  set -gx PATH ~/Android/Sdk/platform-tools $PATH
end

zoxide init fish | source


function y
	set tmp (mktemp -t "yazi-cwd.XXXXXX")
	yazi $argv --cwd-file="$tmp"
	if set cwd (command cat -- "$tmp"); and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
		builtin cd -- "$cwd"
	end
	rm -f -- "$tmp"
end

function sync_bash_path
  set -gx PATH (bash -c 'printf "%s\n" $PATH' | tr ':' '\n')
end

# nvm
set -gx NVM_DIR $HOME/.nvm
if [ -f "$NVM_DIR/nvm.sh" ] 
  bass source $NVM_DIR/nvm.sh
  # bass source ~/.nvm/nvm.sh --no-use
end
if [ -f "$NVM_DIR/bash_completion" ]
  bass source "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
end
