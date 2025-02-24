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
