#!/bin/bash

# Initialize the directory as a Git repository
git init

# Add all files to the staging area
git add .

# Commit the files
git commit -m "Initial commit"

# Open the browser for GitHub authentication
echo "Please authenticate in your browser."
gh auth login --with-token

# Create a new repository on GitHub
gh repo create vscode-skipper-theme --public --confirm

# Add the remote repository
git remote add origin https://github.com/skipmiller/vscode-skipper-theme.git

# Push the changes to the new repository
git push -u origin master