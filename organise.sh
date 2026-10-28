
#!/bin/bash

folder="${1:-.}"

# Allow only one argument.
if [[ $# -gt 1 ]]; then
    echo "Error: provide only one folder." >&2
    exit 1
fi

# Check whether the folder exists.
if [[ ! -d "$folder" ]]; then
    echo "Error: folder does not exist: $folder" >&2
    exit 1
fi

# Convert the folder path to an absolute path.
folder=$(cd "$folder" && pwd) || exit 1

echo "Organising $folder..."

moved=0

for f in "$folder"/*; do

    [[ -f "$f" ]] || continue
    
    name="${f##*/}"

    # Get the extension and filename without the extension.
    if [[ "$name" == *.* && "$name" != .* ]]; then
        ext="${name##*.}"
        base="${name%.*}"

        # Convert the extension to lowercase for classification.
        ext_lower=$(printf '%s' "$ext" | tr '[:upper:]' '[:lower:]')
    else
        # Handle files without an extension.
        ext=""
        base="$name"
        ext_lower=""
    fi

    # Choose a category based on the extension.
    case "$ext_lower" in
        jpg|jpeg|png|gif|webp)
            category="Images"
            ;;
        pdf|doc|docx|txt|xlsx|pptx)
            category="Documents"
            ;;
        mp3|wav|m4a)
            category="Audio"
            ;;
        mp4|mkv|mov)
            category="Video"
            ;;
        zip|rar|tar|gz)
            category="Archives"
            ;;
        *)
            category="Other"
            ;;
    esac

    # Create the category folder only when a file needs it.
    dest_dir="$folder/$category"

    if [[ ! -d "$dest_dir" ]]; then
        if ! mkdir -p -- "$dest_dir"; then
            echo "Error: could not create $category folder." >&2
            continue
        fi
    fi

    # Set the initial destination filename.
    dest="$dest_dir/$name"

    # Find a free destination name without overwriting a file.
    n=1

    while [[ -e "$dest" ]]; do
        if [[ -n "$ext" ]]; then
            dest="$dest_dir/${base}($n).$ext"
        else
            dest="$dest_dir/${base}($n)"
        fi

        n=$((n + 1))
    done

    # Move the file and count only successful moves.
    if mv -- "$f" "$dest"; then
        printf 'Moved: %s -> %s/%s\n' \
            "$name" "$category" "${dest##*/}"

        moved=$((moved + 1))
    else
        echo "Error: could not move $name." >&2
    fi

done

# Display the final summary.
echo "----------------------------------------"
echo "Done: $moved files moved"
