#! /bin/sh
for f in "$1"/*; do
  if [ -f "$f" ]; then
    SIZE="$(du -sh "${f}" | cut -f1 | wc -w "${f}")"
	echo "Processing $f file..."
	echo "File size:  ${SIZE}k"
  fi
done