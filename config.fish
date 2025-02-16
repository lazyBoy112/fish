if status is-interactive
    # Commands to run in interactive sessions can go here
end

if [ -f $HOME/.config/fish/aliases/main.fish ] 
  source $HOME/.config/fish/aliases/main.fish
end

if [ -f $HOME/.config/fish/functions/fish_prompt.fish ] 
  source $HOME/.config/fish/functions/fish_prompt.fish
end
