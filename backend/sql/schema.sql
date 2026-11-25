CREATE TABLE IF NOT EXISTS categories (
 id BIGSERIAL PRIMARY KEY, name VARCHAR(150) NOT NULL, slug VARCHAR(160) UNIQUE NOT NULL, description TEXT, active BOOLEAN NOT NULL DEFAULT TRUE, sort_order INTEGER NOT NULL DEFAULT 0, created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);
CREATE TABLE IF NOT EXISTS products (
 id BIGSERIAL PRIMARY KEY, category_id BIGINT REFERENCES categories(id) ON DELETE SET NULL, name VARCHAR(200) NOT NULL, description TEXT, image_url TEXT, specifications JSONB NOT NULL DEFAULT '[]'::jsonb, active BOOLEAN NOT NULL DEFAULT TRUE, created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);
CREATE TABLE IF NOT EXISTS enquiries (
 id BIGSERIAL PRIMARY KEY, name VARCHAR(120) NOT NULL, email VARCHAR(200) NOT NULL, city VARCHAR(120) NOT NULL, product VARCHAR(150), quantity VARCHAR(120), budget VARCHAR(100), details TEXT, status VARCHAR(30) NOT NULL DEFAULT 'new', created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);
CREATE TABLE IF NOT EXISTS trip_registrations (
 id BIGSERIAL PRIMARY KEY, name VARCHAR(120) NOT NULL, phone VARCHAR(40) NOT NULL, email VARCHAR(200), business TEXT, trip_name VARCHAR(180), trip_date VARCHAR(180), trip_place VARCHAR(250), travellers VARCHAR(20), status VARCHAR(30) NOT NULL DEFAULT 'new', created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);
CREATE TABLE IF NOT EXISTS contact_messages (
 id BIGSERIAL PRIMARY KEY, name VARCHAR(120) NOT NULL, email VARCHAR(200) NOT NULL, message TEXT NOT NULL, created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);
INSERT INTO categories(name,slug,description,sort_order) VALUES
 ('Furniture & Interiors','furniture-interiors','Furniture and interior products',1),
 ('Electronics & Tech','electronics-tech','Consumer and commercial electronics',2),
 ('EV & Automotive','ev-automotive','Electric vehicles and automotive products',3),
 ('Lighting','lighting','Decorative and commercial lighting',4),
 ('Supermarket & General Goods','supermarket-general-goods','Packaged foods and general merchandise',5),
 ('Machinery & Automation','machinery-automation','Industrial machinery and automation',6)
ON CONFLICT(slug) DO NOTHING;
