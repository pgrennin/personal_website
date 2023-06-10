#!/bin/bash

current_dir=$(pwd)
parent_dir=$(dirname "$current_dir")
jekyll_dir="$parent_dir/jekyllsite"
cd $jekyll_dir
jekyll serve