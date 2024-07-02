#!/bin/bash

# Wyswietlanie uzycia skryptu
usage() {
    echo "Użycie: $0 [--date <data>] [--logs] [--help]"
    echo "   lub: $0 [-d <data>] [-l] [-h]"
    echo "Opcje:"
    echo "  --date, -d   Ustaw datę"
    echo "  --logs, -l   Włącz logi"
    echo "  --help, -h   Wyświetl tę wiadomość pomocy"
    exit 1
}

# Domyślne wartości
DATA=""
LOGI=0
POMOC=0

# Przetwarzanie poleceń
while [ "$1" != "" ]; do
    case $1 in
        --date | -d)      shift
                          DATA=$1
                          ;;
        --logs | -l)      LOGI=1
                          ;;
        --help | -h)      POMOC=1
                          ;;
        * )               usage
                          exit 1
    esac
    shift
done

# Wyświetl pomoc
if [ "$POMOC" -eq 1 ]; then
    usage
fi

# Logika
echo "Data: $DATA"
if [ "$LOGI" -eq 1 ]; then
    echo "Logi są włączone"
fi

