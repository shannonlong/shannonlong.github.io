#!/bin/bash

# Create the 'resized' directory if it doesn't exist
rm -f resized/*.jpg
mkdir -p resized

# Loop through all image files in the current directory
for img in *.{jpeg,HEIC,png,jpg}; do
    # Check if the file exists (in case there are no matching files)
   if [ -e "$img" ]; then
        # Define the output filename for the resized image
        output="resized/${img%.*}.jpg"

        # Convert to JPG and resize
        convert "$img" -resize "2000x1200>" "$output"
        echo "Converted and resized: $img -> $output"

        # Generate thumbnail
        thumbnail="resized/${img%.*}-tn.jpg"
        # convert "$output" -resize "300x300" "$thumbnail"
        convert "$output" -resize 300x300^ -gravity center -crop 300x300+0+0 +repage "$thumbnail"
        echo "Thumbnail created: $thumbnail"
    fi
done

echo "Conversion and thumbnail generation complete!"