#!/usr/bin/env bash
# 
# mkflt.sh
# Creates a latex project in the COPYME directory. 
# 
# Setup: 
# 1.
# 2. 
#
# 2025-04-16


test -d COPYME || mkdir COPYME
rm -rf COPYME/*

# packages location
pdir=packages/
cdir=classes/
tdir=templates/
adj=adjustments.tex
mkrc=latexmkrc

# Boolean array representing specified options -h, -s, -r, -p
optns=(0 0 0 0)

function makeslides(){
	local texfile="${tdir}template-slides.tex"
	local texcls="${cdir}fatslides.cls"
	if [[ ${optns[3]} == 1 ]]; then
		echo "mkflt.sh: Plain slides template under development" >&2
		exit 1
	fi
	cp -iur ${texfile} ${texcls} ${pdir} ${adj} ${mkrc} COPYME/
}

function makereport(){
	local texfile="${tdir}template-report.tex"
	local texcls="${cdir}fatreport.cls"
	if [[ ${optns[3]} == 1 ]]; then
		texfile="${tdir}template.tex"
		texcls=""
	fi
	cp -iur ${texfile} ${texcls} ${pdir} ${adj} ${mkrc} COPYME/
}

function usage(){
	echo "Usage:"
	echo "./mkflt.sh : Create a latex report project"
	echo "./mkflt.sh [-h, --help] : Print this help message"
	echo "./mkflt.sh [-s, --slides] : Create a latex slides project"
	echo "./mkflt.sh [-r, --report] : Create a latex report project, same as specifying nothing"
	echo "./mkflt.sh [-p, --plain] : Using plain TeX classes, e.g., article, beamer instead of fatreport, fatslides, resp."
}

TEMP=$(getopt -o 'hsrp' --long 'help,slides,report,plain' -n 'mkflt.sh' -- "$@")

if [ $? -ne 0 ]; then
    echo 'Terminating...' >&2
    exit 1
fi

eval set -- "$TEMP"
unset TEMP

while true; do
    case "$1" in
        '-h'|'--help')
			optns[0]=1
            shift
        ;;
        '-s'|'--slides')
			optns[1]=1
            shift 
        ;;
        '-r'|'--report')
			optns[2]=1
            shift
        ;;
        '-p'|'--plain')
			optns[3]=1
            shift
        ;;
        '--')
            shift
            break
        ;;
        *)
            echo 'Internal error!' >&2
            exit 1
        ;;
    esac
done

# Containing extra arguments
if [[ $1 != '' ]]; then
	echo "mkflt.sh: Unknown argument -- '$1'" >&2
	exit 1
fi

[[ $(( ${optns[0]} | ${optns[1]} | ${optns[2]} )) == 0 ]] && optns[2]=1

[[ ${optns[0]} == 1 ]] && usage

[[ ${optns[1]} == 1 ]] && makeslides

[[ ${optns[2]} == 1 ]] && makereport

exit 0
