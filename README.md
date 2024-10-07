Portfolio site (https://shannonlong.art/) hosted by github pages and namecheap for domain registration.

## Host Locally
`python3 -m http.server`

## How to change images
All the site images are store under `/assets/images`. To change them you need to convert the images to JPG and generate a thumbnail version.

There is a script that will perform these actions to the images in the current director call `convert.sh`. You can execute it from the command line (terminal).

Typically if your images are stored in `/Downloads/new images` this would look like:

```
cd /Downloads/new images
. ~/repos/shannonlong.github.io/convert.sh
```

The converted images would then be located `/Downloads/new images/resized`.
