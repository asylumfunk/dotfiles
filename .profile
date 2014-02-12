#!/bin/sh

if [ -n "${PS1}" ]; then
	if [ -n "${BASH_VERSION}" ]; then
		if [ -e "${HOME}/.bashrc" ]; then
			source "${HOME}/.bashrc"
		fi
	fi
fi

