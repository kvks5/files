#!/bin/bash
#grim -g  - | swappy -f -

grim -g "$(slurp)" - | swappy -f - -o - | pngquant -
