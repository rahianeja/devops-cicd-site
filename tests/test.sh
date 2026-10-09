#!/bin/bash
set -e

echo "Checking required files..."
for f in index.html style.css script.js; do
  [ -f "$f" ] || { echo "FAIL: missing $f"; exit 1; }
done

echo "Checking page content..."
for text in "DevOps Training" "CI/CD Deployment Successful" "Version:"; do
  grep -q "$text" index.html || { echo "FAIL: '$text' not found in index.html"; exit 1; }
done

echo "Checking HTML structure..."
grep -q "<html" index.html || { echo "FAIL: no <html tag"; exit 1; }
grep -q "</html>" index.html || { echo "FAIL: no </html> tag"; exit 1; }

echo "All tests passed"
