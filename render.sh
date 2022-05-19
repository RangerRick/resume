#!/bin/sh

set -e

TOPDIR="$(_dir="$(dirname "$0")"; cd "${_dir}"; echo $PWD)"

export VENV="$HOME/opt/weasyprint"
export CHROME="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"

if [ -e "${VENV}/bin/activate" ] && [ -x "${VENV}/bin/weasyprint" ]; then
	source "${VENV}/bin/activate"
fi

cd "${TOPDIR}"
rm -f .dist/*
npm run hackmyresume -- build resume.json TO ./dist/resume.html -t theme
"$CHROME" --headless \
	--disable-gpu \
	--run-all-compositor-stages-before-draw \
	--print-to-pdf-no-header \
	--print-to-pdf-print-background \
	--print-to-pdf-margin-top=0 \
	--print-to-pdf-margin-bottom=0 \
	--print-to-pdf-margin-left=0 \
	--print-to-pdf-margin-right=0 \
	--print-to-pdf=./dist/resume.pdf \
	./dist/resume.html


