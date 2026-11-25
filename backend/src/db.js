import pg from 'pg';
import dotenv from 'dotenv';
dotenv.config();
const { Pool } = pg;
if (!process.env.DATABASE_URL) console.warn('DATABASE_URL is missing. Add it to backend/.env');
export const pool = new Pool({
  connectionString: process.env.DATABASE_URL,
  ssl: process.env.NODE_ENV === 'production' || process.env.DATABASE_URL?.includes('neon.tech') ? { rejectUnauthorized: false } : undefined,
  max: 5, idleTimeoutMillis: 30000, connectionTimeoutMillis: 10000
});
export const query = (text, params) => pool.query(text, params);
