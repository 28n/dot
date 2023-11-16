source ~/.config/fish/e0-conf/globals.fish

source ~/.config/fish/e0-conf/theme.fish

source ~/.config/fish/e0-conf/aliases.fish

source ~/.config/fish/e0-conf/functions.fish

source ~/.config/fish/e0-conf/path.fish

switch (uname)
    case Darwin
        source (dirname (status --current-filename))/config-osx.fish
    case Linux
        source (dirname (status --current-filename))/config-linux.fish
    case '*'
        source (dirname (status --current-filename))/config-windows.fish
end

set LOCAL_CONFIG (dirname (status --current-filename))/config-local.fish
if test -f $LOCAL_CONFIG
    source $LOCAL_CONFIG
end
