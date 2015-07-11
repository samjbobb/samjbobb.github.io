#!/bin/bash
# Use: ./image_prep.sh path/to\ the/original/image.jpg internetfriendlyname
# Will produce ./assets/internetfriendlyname-[size].jpg
# EXIF and comments removed.

INFILE=$1
OUTNAME=$2
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
ASSET_DIR="assets"

OUTFILE="$DIR/$ASSET_DIR/$OUTNAME-740.jpg"
echo $OUTFILE
convert -auto-orient -auto-level -auto-gamma -strip -resize 740 -interlace Plane -sampling-factor 4:2:0 -quality 85% "$INFILE" "$OUTFILE"