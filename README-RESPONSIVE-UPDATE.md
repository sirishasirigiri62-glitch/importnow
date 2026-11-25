# Responsive layout update

This update adds a final responsive CSS pass for the complete ImportNow landing page.

## Breakpoints
- Desktop: fluid container widths and grid sizing.
- Tablet (1100px and below): import journey dashboard stacks, category cards reflow, and content grids adapt.
- Mobile (760px and below): compact navigation, stacked process detail, adjusted hero, forms, cards, and footer.
- Small mobile (480px and below): single-column cards and form controls, smaller media heights, and tighter spacing.

The React components and existing content/interactions are preserved. The changes are in `src/App.css` and this note.

## Run locally

```bash
npm install
npm run dev
```

## Production build

```bash
npm run build
```
