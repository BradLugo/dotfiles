#!/bin/sh

echo 'Updating vim-plug and plugins...'
vim -X -n +PlugUpgrade +PlugUpdate +qall > /dev/null
echo 'Done updating vim plugins.'
