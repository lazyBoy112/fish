# Utils
alias ll 'eza -la --icons'
alias rg 'rg --hidden'
alias reload 'source ~/.config/fish/config.fish'
alias start nautilus
alias sudobrew 'sudo env "PATH=$PATH"'
alias sdkpath '~/.sdk/'

# env
alias switch-java 'sudo update-alternatives --config java'

function yz
    set tmpfile /tmp/yazi-cwd
    yazi
    if test -f $tmpfile
        cd (cat $tmpfile)
        rm $tmpfile
    end
end

