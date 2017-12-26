#!/bin/sh

echo "===================="
echo "Deployment Start"

echo "generating site..."
hugo
echo "generating site finished"

echo "pushing to remote repository"
git add .
git commit -m 'update'
git push origin master

echo "Deployment Finished"
echo "===================="
