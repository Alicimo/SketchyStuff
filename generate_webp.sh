#!/usr/bin/env bash

set -euo pipefail

root_dir="${1:-content/galleries}"

if ! command -v magick >/dev/null 2>&1; then
  echo "Error: ImageMagick (magick) is required." >&2
  exit 1
fi

convert_png_to_webp() {
  local source_file="$1"
  local target_file="$2"
  magick "$source_file" -resize 1500x -quality 82 "$target_file"
}

while IFS= read -r -d '' png_file; do
  webp_file="${png_file%.png}.webp"
  if [[ ! -f "$webp_file" ]]; then
    convert_png_to_webp "$png_file" "$webp_file"
    echo "Generated: $webp_file"
  fi
done < <(find "$root_dir" -type f -name "*.png" -print0)
