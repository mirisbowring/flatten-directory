#!/bin/bash

main_folder="$1"

if [ -z "$main_folder" ]; then
    echo "Bitte geben Sie den Hauptordner als Argument an."
    exit 1
fi

# Überprüfen auf doppelte Dateinamen
duplicates=$(find "$main_folder" -type f -printf "%f\n" | sort | uniq -d)
if [ -n "$duplicates" ]; then
    echo "Folgende doppelte Dateinamen wurden gefunden:"
    echo "$duplicates"
else
    echo "Es wurden keine doppelten Dateinamen gefunden."
fi

# Verschieben der Dateien in den Hauptordner
find "$main_folder" -mindepth 2 -type f -exec mv -t "$main_folder" {} +

# Löschen der leeren Subordner
find "$main_folder" -type d -empty -delete
