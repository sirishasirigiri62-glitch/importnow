# ImportNow video fix — v6

Updated the Furniture and Electronics background video sources to the exact MP4 URLs exposed by Pexels download redirects. The prior sources used incorrect file variants/IDs, which left the poster image visible.

The category video is now visible by default while loading and is hidden only when the browser fires a video error; the poster remains behind it as a fallback.

Run with `npm install` and `npm run dev`. Check DevTools Network if a video is blocked by a browser extension, firewall, or network policy.
