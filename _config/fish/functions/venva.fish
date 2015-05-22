function venva
    set VENV venv
    set -q argv[1]; and set VENV $argv[1]
    . ./{$VENV}/bin/activate.fish
end

