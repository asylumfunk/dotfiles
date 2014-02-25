#!/bin/sh

backup_prefix=backup_
backup_dir=./${backup_prefix}$(date +%Y%m%d%H%M%S)

mkdir "${backup_dir}"

find \
	-mindepth 1 -maxdepth 1 \
	   -name '.*' \
	\! -name '.git' \
	\! -name '.gitignore' \
	\! -name '.gitmodules' \
	\! -name '*.swp' \
	\! -name '*.swo' \
	-exec sh -c '
		file=${1##*/}
		src_backup=${HOME}/${file}
		dst_backup=${2}
		src_link=${PWD}/${file}
		dst_link=${HOME}

		if [ -h "${src_backup}" ]; then
			rm "${src_backup}"
		elif [ -e "${src_backup}" ]; then
			mv "${src_backup}" "${dst_backup}"
		fi

		ln -s "${src_link}" "${dst_link}"
' -- "{}" "${backup_dir}" \;

find -type d -name "${backup_prefix}*" -empty -delete

