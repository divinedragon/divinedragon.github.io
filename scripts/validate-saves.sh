#!/bin/env bash

FOLDER_NAME=$1

cd $FOLDER_NAME

echo "[INFO] Validating Saves in Folder - $FOLDER_NAME"

for FILE in $(find . -maxdepth 1 -not -type d | cut -c3- | sort); do

    FAIL=""

    # Check if File has date in Front Matter
    front_matter_date=$(head -2 "$FILE" | tail -1 | grep '^date: ".*"$' | wc -l)

    # Check if File has title in Front Matter
    front_matter_title=$(head -3 "$FILE" | tail -1 | grep '^title: ".*"$' | wc -l)

    # Check if File has slug in Front Matter
    front_matter_slug=$(head -4 "$FILE" | tail -1 | grep '^slug: ".*"$' | wc -l)

    # Check if File has tags in Front Matter
    front_matter_tags=$(head -5 "$FILE" | tail -1 | grep '^tags: \[.*\]$' | wc -l)

    # Check if the Source section starts on Line 10
    content_saves=$(head -10 "$FILE" | tail -1 | grep -c '^$')

    # Check if Page Links has 3 empty lines before it
    content_page_links=$(grep -i -B 4 "^  \[1\]" "$FILE" | grep -c '^$')

    [ "$front_matter_date" -ne "1" ] && FAIL="${FAIL}\n\t🔴 Date in Front Matter incorrect"
    [ "$front_matter_title" -ne "1" ] && FAIL="${FAIL}\n\t🔴 Title in Front Matter incorrect"
    [ "$front_matter_slug" -ne "1" ] && FAIL="${FAIL}\n\t🔴 Slug in Front Matter incorrect"
    [ "$front_matter_tags" -ne "1" ] && FAIL="${FAIL}\n\t🔴 Tags in Front Matter incorrect"
    [ "$content_saves" -ne "0" ] && FAIL="${FAIL}\n\t🔴 'Source' content section is incorrect"
    [ "$content_page_links" -ne "3" ] && FAIL="${FAIL}\n\t🔴 Page Links section is incorrect"

    if [ "x${FAIL}" = "x" ]; then
        echo "[INFO] Pass - ${FILE} ✅"
    else
        echo "[INFO] Validation Errors - ${FILE} ❌${FAIL}"
    fi
done

cd - > /dev/null
