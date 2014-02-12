#!/bin/sh

backup_prefix=backup_
backup_dir=./${backup_prefix}$(date +%Y%m%d%H%M%S)

mkdir "${backup_dir}"

find \
	-mindepth 1 -maxdepth 1 \
	-not -name '.git' -a \
	-not -name '.*.*' -a \
	-name '.*' \
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

#allow '.profile' to take precedence
for file in .bash_profile .bash_login; do
	file=${HOME}/${file}
	if [ -h "${file}" ]; then
		rm "${file}"
	elif [ -e "${file}" ]; then
		mv "${file}" "${backup_dir}"
	fi
done

find -type d -name "${backup_prefix}*" -empty -delete

