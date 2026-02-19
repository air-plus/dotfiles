if type -q eza
    set -l eza_base 'eza --icons --group-directories-first --color=always --time-style=long-iso'

    abbr -a ls "$eza_base"
    abbr -a ll "$eza_base -lh"
    abbr -a la "$eza_base -lha"
    abbr -a lg "$eza_base -lha --git"
else
    abbr -a ls 'ls -G'
    abbr -a ll 'ls -lh'
    abbr -a la 'ls -lha'
end
