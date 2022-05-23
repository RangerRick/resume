#!/bin/sh

set -e

TOPDIR="$(_dir="$(dirname "$0")"; cd "${_dir}"; echo $PWD)"

export CHROME="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"

cd "${TOPDIR}"
rm -f .dist/*
npm run hackmyresume -- build basics.json resume.json TO ./dist/benjamin-reed-resume.html ./dist/benjamin-reed-resume.json -t theme
"$CHROME" --headless \
	--verbose \
	--disable-gpu \
	--run-all-compositor-stages-before-draw \
	--print-to-pdf=./dist/benjamin-reed-resume.pdf \
	--print-to-pdf-no-header \
	--print-to-pdf-print-background \
	--print-to-pdf-margin-top=0 \
	--print-to-pdf-margin-bottom=0 \
	--print-to-pdf-margin-left=0 \
	--print-to-pdf-margin-right=0 \
	./dist/benjamin-reed-resume.html

chmod 644 dist/*

rsync -avr --delete ./dist/ ranger@secure.befunk.com:~/public_html/temp/resume-2022/
