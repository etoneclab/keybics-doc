#!/bin/zsh
# Rebuilds the HTML subpages from src/*.md and the handbook from ../Benutzerhandbuch.md. Needs pandoc.
# index.html is hand-written and not generated.
set -euo pipefail
cd "$(dirname "$0")"
build() { # source, output, lang, title
  pandoc "$1" -f markdown+hard_line_breaks -t html5 --template=template.html \
    -V lang="$3" -M pagetitle="$4" -o "$2"
}
build src/privacy.md     privacy.html     en "Privacy Policy – Keybics"
build src/datenschutz.md datenschutz.html de "Datenschutzerklärung – Keybics"
build src/support.md     support.html     en "Support – Keybics"
build src/impressum.md   impressum.html   de "Impressum – Keybics"

# Handbook: same Markdown as the PDF in the app repository; images in img/ are copies of ../img/.
cp ../img/*.png img/
[ -f ../Benutzerhandbuch.pdf ] && cp ../Benutzerhandbuch.pdf Keybics-Benutzerhandbuch.pdf
pandoc ../Benutzerhandbuch.md -f markdown+fenced_divs+implicit_figures+link_attributes -t html5 \
  --template=template.html -V lang=de -M pagetitle="Benutzerhandbuch – Keybics" -M pdf=Keybics-Benutzerhandbuch.pdf \
  -o benutzerhandbuch.html
echo "Built pages."
