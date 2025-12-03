const express = require('express');
const mysql = require('mysql2/promise');
const cors = require('cors');
require('dotenv').config({ path: '.env.local' });

const app = express();
app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use(cors());

// สร้าง connection pool MySQL
const pool = mysql.createPool({
  host: process.env.DB_HOST || 'localhost',
  user: process.env.DB_USER || 'root',
  password: process.env.DB_PASSWORD || '',
  database: process.env.DB_NAME || 'dit312_6706073', // ชื่อ database
  port: Number(process.env.DB_PORT || 3306),
  waitForConnections: true,
  connectionLimit: 10,
  queueLimit: 0,
});

// Health check
app.get('/health', async (req, res) => {
  try {
    const [rows] = await pool.query('SELECT 1 AS ok');
    res.json({ status: 'ok', db: rows[0].ok === 1 });
  } catch (e) {
    console.error(e);
    res.status(500).json({ status: 'error', message: e.message });
  }
});

// ดึงข้อมูลเสื้อผ้า
app.get('/clothes', async (req, res) => {
  try {
    const [rows] = await pool.query('SELECT * FROM clothes');
    res.json(rows);
  } catch (e) {
    console.error(e);
    res.status(500).json({ error: 'Internal Server Error' });
  }
});

// ดึงเสื้อผ้าโดย ID
app.get('/clothes/:id', async (req, res) => {
  const id = req.params.id;
  try {
    const [rows] = await pool.query('SELECT * FROM clothes WHERE id = ?', [id]);
    if (rows.length === 0) {
      return res.status(404).json({ error: 'Not Found' });
    }
    res.json(rows[0]);
  } catch (e) {
    console.error(e);
    res.status(500).json({ error: 'Internal Server Error' });
  }
});

// ตั้งค่า port และ start server
const port = Number(process.env.PORT || 5000);
app.listen(port, () => console.log(`API listening on http://localhost:${port}`));
