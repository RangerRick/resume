#!/usr/bin/env node

const fs = require('fs');
const path = require('path');

const HTMLtoDOCX = require('html-to-docx');

const html = fs.readFileSync(path.join(__dirname, 'dist', 'benjamin-reed-resume.html')).toString();

(async () => {
    const fileBuffer = await HTMLtoDOCX(html, null, {
        table: { row: { cantSplit: true } },
        footer: false,
        pageNumber: false,
    });

    fs.writeFileSync(path.join(__dirname, 'dist', 'benjamin-reed-resume.docx'), fileBuffer, (error) => {
        if (error) {
            console.error(error);
            return;
        }
    });
})();