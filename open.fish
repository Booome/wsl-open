function open
    for path in $argv
        if not test -e $path
            echo "Path '$path' does not exist."
            continue
        end

        if test -d $path
            explorer.exe "$path"
        else if test -f $path
            powershell.exe -Command "Start-Process '$path'"
        end
    end
end
