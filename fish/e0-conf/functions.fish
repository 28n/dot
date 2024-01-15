function mkcd
    mkdir $argv[1]
    cd $argv[1]
end

function cdj
    set basepath /Volumes/entr0pyeng1ne/
    set wildcard "*/*/$argv[1]*"
    set fullpath "$basepath$wildcard"

    if test -d "$fullpath"
        cd "$fullpath"
    else
        set parent_dir (dirname "$basepath$wildcard:h")
        if test -d "$parent_dir"
            cd "$parent_dir"
        else
            echo "Error: Directory not found."
        end
    end
end
