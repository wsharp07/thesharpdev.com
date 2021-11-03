#!/bin/bash
# ./create-post.sh -t "title" -f "folder_name"

# Constants
ROOT_DIR=thesharpdev.com
POST_PATH=content/posts

# Handle args
while getopts t:f: flag
do
    case "${flag}" in
        t) title=${OPTARG};;
        f) folder_name=${OPTARG};;
    esac
done

# Set variables
FOLDER_PATH=$ROOT_DIR/$POST_PATH/$folder_name
CURRENT_DATE=$(date +'%Y-%m-%d')

# Create new post folder
mkdir $FOLDER_PATH

# Create new post
echo "---
title: \"$title\"
date: $CURRENT_DATE
draft: true
hideWordCount: true
---" > $FOLDER_PATH/index.md
