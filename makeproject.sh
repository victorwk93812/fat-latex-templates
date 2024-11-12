#!/bin/bash
# 
# .sh
# <functionality>
# 
# Required Packages: 
# 1. 
# 
# Setup: 
# 1.
# 2. 
#
# <YYYY/MM/DD>

# TEMP=$(getopt -o 'ab:c::' --long 'a-long,b-long:,c-long::' -n 'example.bash' -- "$@")

# if [ $? -ne 0 ]; then
#     echo 'Terminating...' >&2
#     exit 1
# fi

# eval set -- "$TEMP"
# unset TEMP

# while true; do
#     case "$1" in
#         '-a'|'--a-long')
#             echo 'Option a'
#             shift
#             continue
#         ;;
#         '-b'|'--b-long')
#             echo "Option b, argument '$2'"
#             shift 2
#             continue
#         ;;
#         '-c'|'--c-long')
#             # c has an optional argument. As we are in quoted mode,
#             # an empty parameter will be generated if its optional
#             # argument is not found.
#             case "$2" in
#                 '')
#                     echo 'Option c, no argument'
#                 ;;
#                 *)
#                     echo "Option c, argument '$2'"
#                 ;;
#             esac
#             shift 2
#             continue
#         ;;
#         '--')
#             shift
#             break
#         ;;
#         *)
#             echo 'Internal error!' >&2
#             exit 1
#         ;;
#     esac
# done

# # Containing extra arguments
# if [[ $1 != '' ]]; then
# 	echo "<script name>: Unknown argument -- '$1'" >&2
# 	exit 1
# fi

# # Default usage with no arguments and options

exit 0
