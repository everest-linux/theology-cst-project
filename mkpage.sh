#!/bin/sh

usage() {
	printf "usage: ${0} NEW_PAGE_NAME FORMAL_NAME\n"
}

if [ "${1}" == "" ]; then
	usage "$@"
	exit 1
fi

printf "Creating new page...\n"
cp -v template.html ${1}.html
sed -i "s|CST Project - Template|CST Project - ${2}|g" ${1}.html
printf "Done.\n"
