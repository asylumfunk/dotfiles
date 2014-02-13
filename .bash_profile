#!/bin/bash

. "${HOME}/.shell/bash/env"
BASH_ENV=
. "${HOME}/.shell/bash/login"

if [ -n "${PS1}" ]; then
	. "${HOME}/.shell/bash/interactive"
fi

