#!/bin/bash
echo "nombre del commit?"
read varmessage
git add .
git commit -m "$varmessage"
git push origin master
echo "very well my little grass hopper"
