# ImportNow — Import Process section

The `HowItWorks` component in `src/App.jsx` has been replaced with the interactive six-step import dashboard.

## Included
- Six selectable import stages
- China → India route tracker with animated progress
- Stage-specific photo, estimated timeline and deliverables
- Frosted-glass panels over a container-port background
- Burnt terracotta accents and responsive mobile layout
- Reduced-motion support

## Run
```bash
npm install
npm run dev
```

The existing project uses Vite + React and its own `src/App.css` styling system. The new section is integrated into that system to avoid adding a second CSS build pipeline. The port and stage photographs are loaded from Unsplash URLs and need an internet connection.
