#!/bin/bash

case "$1" in
    --date|-d)
        date
        ;;
    --logs|-l)
        if [ -z "$2" ]; wtedy
            num=100
        else
            num=$2
        fi
        for ((i=1; i<=num; i++)); do
            echo "Log number $i, created by skrypt.sh on $(date)" > log_$i.txt
        done
        ;;
    --help|-h)
        echo "Dostępne opcje:"
        echo "--date, -d      Wyświetla dzisiejszą datę"
        echo "--logs, -l [liczba] Tworzy automatycznie [liczba] plików log_x.txt"
        echo "--help, -h      Wyświetla dostępne opcje"
        ;;
    *)
        echo "Nieznana opcja. Użyj --help do wyświetlenia dostępnych opcji."
        ;;
esac
