
#!/bin/bash

# Directory containing the images (current directory by default)
DIR="."

# Counter for numbering
i=1

# Loop through all image files
for file in "$DIR"/*.{jpg,jpeg,png,gif,webp,bmp}; do
  # Check if file exists (to avoid errors if no images match)
  [[ -f "$file" ]] || continue

  # Get file extension (e.g., .jpg, .png)
  ext="${file##*.}"

  # Create new filename (e.g., image1.jpg, image2.png)
  newname="$DIR/image$i.$ext"

  # Rename the file
  mv "$file" "$newname"
  echo "Renamed: $file → $newname"

  # Increment counter
  ((i++))
done

echo "✅ All images renamed!"