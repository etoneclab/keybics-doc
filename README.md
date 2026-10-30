# Keybics – website

Landing page, user manual and legal pages for Keybics (formerly EbicsStart), served by GitHub Pages.

- `index.html` is hand-written. The other pages are generated: edit `src/*.md` (or `../Benutzerhandbuch.md` in the app repository), then run `./build.sh` (needs pandoc). The generated `*.html` files are committed; GitHub Pages serves them as they are.
- Fonts are self-hosted in `fonts/` (SIL Open Font License, licence texts alongside), so the site makes no requests to Google.
- `.nojekyll` switches Jekyll off.
- Replace every bracketed placeholder before publishing: `grep -rnE '\[[^]]*\]([^(]|$)' src`.

Pages: `index.html`, `benutzerhandbuch.html`, `privacy.html` (EN), `datenschutz.html` (DE), `support.html`, `impressum.html`.
`demo.html` (hand-written) plays `video/keybics-demo.mp4`, the demo video linked in the App Review notes; it is not linked from the other pages.
`privacy.html` is the Privacy Policy URL in App Store Connect; do not rename it.
