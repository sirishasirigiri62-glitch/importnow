# ImportNow V13 – Modal and category video fixes

- Import Guides and China Trips dialogs are rendered with React DOM portals directly under `document.body`, preventing parent section stacking contexts and overflow from clipping the dialogs or allowing the next section to paint over them.
- Modal open state locks both the document element and body; dialog content has independent, touch-friendly vertical scrolling.
- Lighting category background uses Pexels' Modern Pendant Lamps video (clip 35993895).
- Supermarket & General Goods category background uses Pexels' Bright Frozen Food Aisle video (clip 29824279).
- Machinery & Automation category background uses Pexels' Automated Car Factory video (clip 6450803).
- Category videos remain muted, autoplay, loop and play inline; posters fade once video data is ready. Existing category click/catalogue behaviour is unchanged.
- Responsive modal sizing and single-column guide layout are applied on narrow screens.

Run with `npm install` then `npm run dev`.
