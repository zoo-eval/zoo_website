#!/bin/bash
mkdir -p img
BASE="https://raw.githubusercontent.com/bgrins/the_zoo/main/docs/screenshots"

images=(
  analytics-zoo
  auth-zoo
  classifieds-zoo
  example-zoo
  excalidraw-zoo
  focalboard-zoo
  gitea-zoo
  home-zoo
  miniflux-zoo
  mattermost-zoo
  misc-zoo
  northwind-zoo
  onestopshop-zoo
  paste-zoo
  performance-zoo
  postmill-zoo
  snappymail-zoo
  wiki-zoo
)

for name in "${images[@]}"; do
  echo "Downloading ${name}.jpeg..."
  curl -sL -o "img/${name}.jpeg" "${BASE}/${name}.jpeg"
done

echo "Done. $(ls img/*.jpeg 2>/dev/null | wc -l) images downloaded to img/"
