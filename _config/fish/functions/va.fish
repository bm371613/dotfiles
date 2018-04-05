function va
    test -z $VENV; and set VENV $argv[1]
    test -z $VENV; and set VENV ( pipenv --venv ^&- )
    test -z $VENV; and set VENV venv
    test ! -e {$VENV}/bin/activate.fish; and return 1
    . {$VENV}/bin/activate.fish
end

