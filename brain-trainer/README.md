# Synapse Routine

A daily cognitive training routine that runs in any browser on PC, Mac, Android or iPhone, and can be installed as an app.

## Daily routine (about 15–20 minutes)

1. **Dual N-Back**: working memory, every day (Jaeggi et al., 2008 protocol: 20+N trials, 3 s each, adaptive level).
2. **Two rotating drills**, chosen by date:
   - **Rule Switch**: cognitive flexibility (odd/even vs. low/high task switching).
   - **Number Sprint**: processing speed (60 s adaptive mental arithmetic).
   - **Block Span**: visuospatial memory (Corsi block-tapping).
   - **Pattern Series**: fluid reasoning (number-series puzzles).
3. **Card Review**: spaced-repetition flashcards (retrieval practice + spacing).
4. **Daily habits** with the strongest evidence: aerobic exercise, sleep, challenging reading, mindfulness (built-in breathing timer), learning a hard skill.

Every drill adapts its difficulty. Progress tab shows streaks, a 12-week consistency map and level curves. The Science tab summarises the research honestly, with DOI links: drills reliably improve the trained skills, while broad gains in intelligence are best supported for education/learning, sleep and exercise.

## Run it

- **PC:** open `index.html` in a browser.
- **Phone / installable app:** host this folder on any HTTPS static host (e.g. GitHub Pages), open it on your phone, then use *Add to Home Screen*. It then works offline.

Data is stored locally in the browser. Use **Progress → Show backup / Import** to move it between devices.

## Files

- `app.html`: the app source (HTML, CSS, JS, no dependencies besides Google Fonts).
- `build.sh`: wraps `app.html` into `index.html` with the PWA manifest and service worker.
- `manifest.webmanifest`, `sw.js`, `icon.svg`: install + offline support.
