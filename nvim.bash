#!/bin/bash

for addr in $XDG_RUNTIME_DIR/nvim.*; do
  nvim --server $addr --remote-send ':lua require("nvchad.utils").reload() <cr>'
done

nvim -c 'lua require("nvconfig").base46.theme="colorinator"' \
  -c 'lua require("base46").load_all_highlights()' \
  -c 'q'
