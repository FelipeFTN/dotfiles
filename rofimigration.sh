
for file in ./rofi/.local/share/rofi/themes/*.rasi; do
  # ignore the files that starts with catppuccin
  if [[ "$file" == *"catppuccin"* ]]; then
    continue
  fi

  if [ -f "$file" ]; then
    # Read the first line of the symbolic link
    # copy the path in the line and paste it in the file
    first_line=$(head -n 1 "$file")
    # There will be a path to the original file
    # check if the path exists
    # if it exists, copy the file in that path to the current file
    # if it does not exist, print an error message
    if [ -f "$first_line" ]; then
      echo "Copying $first_line to $file"
      cp "$first_line" "$file"
    else
      echo "Error: The file $first_line does not exist."
    fi

    elif [ -L "$file" ]; then
      # If it's a symbolic link, read the target of the link
      target=$(readlink "$file")
      if [ -f "$target" ]; then
        echo "Copying $target to $file"
        cp "$target" "$file"
      else
        echo "Error: The target file $target does not exist."
    fi
  else
      echo "File $file does not exist."
  fi
done
