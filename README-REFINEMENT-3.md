# ImportNow visual refinement 3

## What changed
- Fixed the import-process background video so it is absolutely positioned behind the content and cannot push the dashboard out of place.
- Widened the import dashboard and constrained the stage image to its own grid column with clipped overflow.
- Rebuilt all six `What we import` cards as full-bleed video panels with dark overlays; removed the white footer strip.
- Changed the categories section and quote form to the existing navy / steel-blue / terracotta palette. No cream or beige backgrounds are used in those sections.
- Increased the `LET'S GET STARTED` form eyebrow and quote heading size.
- Updated the category video sources to Pexels footage IDs relevant to furniture production, electronics, automotive, lighting equipment, supermarket retail and industrial machinery.

## Run
```bash
npm install
npm run dev
```

Videos are remote Pexels MP4s and need an internet connection. The poster image remains visible if a video cannot load.
