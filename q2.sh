#!/bin/bash
UNIX=(Debian 'Red hat' Ubuntu Suse Fedora)
echo "All elements: ${UNIX[*]}"
echo "Array length: ${#UNIX[*]}"
echo "Length of element 2: ${#UNIX[2]}"
echo "2 element: ${UNIX[@]:1:3}"
echo "search and replace : ${UNIX[@]/Ubuntu/SCOUnix}"
a=(AIX HP-UX)
UNIX=(${UNIX[@]} ${a[@]})
echo "Updated Array: ${UNIX[*]}"
unset UNIX[2]
echo "${UNIX[@]}"
LINUX=(${UNIX[@]})
echo "${LINUX[@]}"
BASH=(${UNIX[@]} ${LINUX[@]})
echo "${BASH[@]}"
unset UNIX[*]
unset LINUX[*]
echo "${UNIX[@]}"


