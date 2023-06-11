#!/bin/bash

echo "Building the Jekyll site"

current_dir=$(pwd)
parent_dir=$(dirname "$current_dir")

jekyll_dir="$parent_dir/jekyllsite"

echo "Building the site in $jekyll_dir"

cd $jekyll_dir
JEKYLL_ENV=production bundle exec jekyll build

echo "Deploying the site to AWS"
cd $parent_dir
copilot deploy --name static-site --env production

echo "Invalidating the CloudFront cache"
aws cloudfront create-invalidation --distribution-id E3TILGJO5911I3 --paths "/*"