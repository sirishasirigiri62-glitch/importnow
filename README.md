# ImportNow website recreation

A responsive React + Vite recreation of the ImportNow China-to-India import services landing page.

## Included sections

- Transparent glass navigation that becomes blurred and darker while scrolling, plus responsive mobile menu
- Hero, sourcing CTA, proof points and scrolling route ticker
- Six image-led end-to-end import service cards with numbered arrows between steps
- Interactive six-step import journey with plain-language explanations, a simple China-to-India route illustration and Previous/Next controls
- Product categories and China manufacturing hubs
- Shanghai company-presence panel with an office visual and designed licence-style panel
- China business trips and inclusions
- Recently delivered project cards with muted looping video backgrounds
- Client stories in an interactive left-copy / right-review carousel with rating visuals
- Import guide cards on a dark maritime-themed background
- FAQ accordion in dark, glass-style cards
- Quote form that opens WhatsApp with the entered details
- Footer and floating WhatsApp shortcut

## Run locally

Install Node.js 18 or newer, then run these commands from this folder:

```bash
npm install
npm run dev
```

Open the localhost URL printed by Vite (normally `http://localhost:5173`).

Create a production build with:

```bash
npm run build
```

Vite outputs the production site into `dist/`.

## Notes before submitting

1. The React site uses Unsplash image URLs for visual assets. For a more reliable production submission, download appropriately licensed images into `public/images/` and replace the remote URLs in `src/App.jsx` and `src/data.js`.
2. The React application imports both `src/index.css` and `src/App.css`. If the page appears as unstyled text, confirm both imports are present in `src/main.jsx`.
3. The Shanghai licence panel is a designed visual representation of the company details shown on the reference site, not a reproduction or verification of the original legal document.
4. The extra carousel profiles and star ratings are sample UI content. Replace them with real, permissioned customer reviews and genuine ratings before publishing. Do not present placeholder or unverified figures as independently verified facts.
5. Videos and photography load from external Unsplash and Pexels URLs, so an internet connection is required.
6. The WhatsApp form currently targets the phone number displayed on the reference site: `+91 99897 24320`.

## How the journey section works

The “How it works” section is designed for first-time importers. It avoids assuming visitors know geography or shipping terms. Each of the six steps can be selected to reveal a plain-English explanation and a small “What you need to do” prompt. The route illustration uses familiar landmarks — factory, ship, Indian port and your address — instead of a technical map. A static layout preview is available at `how-it-works-preview.html`.

## Main source files

- `src/App.jsx` — page sections and interactions
- `src/data.js` — service, category, project and FAQ content
- `src/App.css` — component styling and responsive breakpoints
- `src/index.css` — global styles and design tokens
- `vite.config.js` — Vite React plugin configuration
