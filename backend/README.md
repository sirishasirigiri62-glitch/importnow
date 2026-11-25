# ImportNow backend (Express + Neon PostgreSQL)

This project uses one backend: **Node.js + Express** in `src/server.js`.
It is not a Cloudflare Worker project. Deploy this API to a Node.js-compatible host; the Vite frontend can remain on Cloudflare Pages.

## 1. Configure the backend

From the project root:

```bash
cd backend
npm install
```

Copy `.env.example` to `.env` and set `DATABASE_URL` to your Neon PostgreSQL connection string. Keep `.env` private and do not commit it.

## 2. Create the database tables

Connect pgAdmin to your Neon database and execute `sql/schema.sql` once. It creates:

- `categories`
- `products`
- `enquiries`
- `trip_registrations`
- `contact_messages`

The `products` table intentionally has no price column in this schema. Product pricing is not currently stored by this backend.

## 3. Start the API

From the `backend` folder:

```bash
npm run dev
```

The API runs at `http://localhost:5000`.

Health check: `http://localhost:5000/api/health`

## 4. Configure the frontend

In the project root, copy `.env.example` to `.env`. Set:

```env
VITE_API_URL=http://localhost:5000/api
```

Then, in a separate terminal at the project root:

```bash
npm install
npm run dev
```

## API routes

- `GET /api/health` — checks database connectivity
- `GET /api/categories` — returns active categories
- `GET /api/products` — returns active products; optional `?category=category-slug`
- `POST /api/enquiries` — saves quote enquiries
- `POST /api/trip-registrations` — saves trip registrations
- `POST /api/contact-messages` — saves contact messages
- `GET /api/admin/enquiries` — requires `x-admin-key`
- `GET /api/admin/trips` — requires `x-admin-key`
- `GET /api/admin/contacts` — requires `x-admin-key`

Set `FRONTEND_URL` and `ADMIN_API_KEY` in the backend host's environment for production.

## Important current limitation

The existing product catalogue displayed in the React category pages is still defined locally in `src/App.jsx`. The products API works, but the category pages have not yet been changed to load catalogue cards from Neon. The trip and quote forms send save requests to the API and also open WhatsApp; their current UI logs API save failures to the browser console rather than showing an error to the visitor.
