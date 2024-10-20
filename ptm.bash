#!/bin/bash

for file in /dev/pts/*; do
	if [[ $file =~ ^/dev/pts/[0-9]+$ ]]; then
		cat "$HOME/.colors/generated/terminal/sequences.txt" >"$file"
	fi
done
