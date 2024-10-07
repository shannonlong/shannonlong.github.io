#!/bin/zsh

# Create the 'resized' directory if it doesn't exist
rm -rf resized
mkdir -p resized

# Loop through all image files in the current directory
for img in `ls *.jpg(N) *.png(N) *.HEIC(N)`; do 
    # Check if the file exists (in case there are no matching files)
   if [ -e "$img" ]; then
        # Define the output filename for the resized image
        output="resized/${img%.*}.jpg"

        # Convert to JPG and resize
        magick "$img" -resize "2000x1200>" "$output"
        echo "Converted and resized: $img -> $output"

        # Generate thumbnail
        thumbnail="resized/${img%.*}-tn.jpg"
        magick "$output" -resize 600x600^ -gravity center -crop 600x600+0+0 +repage "$thumbnail"
        echo "Thumbnail created: $thumbnail"
    fi
done

echo "Conversion and thumbnail generation complete!"
