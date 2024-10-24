Portfolio site (https://shannonlong.art/) hosted by github pages and namecheap for domain registration.

## Host Locally
`python3 -m http.server`

## How to build site
The sites content is seperated into parts which reside inside `/src/`. To edit the site make changes to the files under `/src`. Then build the final files by running `./build.sh` from the project root directory.

For development you can auto build the site when a file changes via `find src/ | entr ./build.sh`.

## How to change images
All the site images are store under `/assets/images`. To change them you need to convert the images to JPG and generate a thumbnail version.

There is a script that will perform these actions to the images in the current director call `convert.sh`. You can execute it from the command line (terminal).

Typically if your images are stored in `/Downloads/new images` this would look like:

```
cd /Downloads/new images
. ~/repos/shannonlong.github.io/convert.sh
```

The converted images would then be located `/Downloads/new images/resized`.

## Generating animations
### Thumbnails
```
ffmpeg -i 02-tn.mov -vf "crop=422:422:0:0" -loop 0 02-tn.webp
```

### Full versions
```
ffmpeg -i 05.mkv -s 600x600 05.webm
```