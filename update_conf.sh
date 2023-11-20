#!/bin/bash

# Removes old conf from $HOME/.config and replaces it with new
echo "Removing old conf from "$HOME"/.config/"
rm -rf $HOME/.config/nvim
echo "Copying new config.."
cp -r ./nvim/ $HOME/.config/
echo "Done !"
