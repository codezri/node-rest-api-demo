require('dotenv').config();
const express = require('express');
const app = express();
const sql = require('./db.js');

app.use(express.json());

app.get('/locations', async(req, res) => {
    try {
        const [locations] = await sql.query('SELECT * FROM location');
        return res.json(locations);
    }
    catch(error) {
        return res.status(500).json({
            message: 'Internal server error',
        });
    }
});

app.get('/customers', async(req, res) => {
    try {
        const [customers] = await sql.query('SELECT * FROM customer');
        return res.json(customers);
    }
    catch(error) {
        return res.status(500).json({
            message: 'Internal server error',
        });
    }
});

app.post('/customers', async(req, res) => {
    try {
        const { name } = req.body;
        const [locations] = await sql.query('SELECT * FROM location ORDER BY RAND() LIMIT 1');
        const locationId = locations.at(0).id;
        const [result] = await sql.query(`INSERT INTO customer(name, location_id) VALUES("${name}", ${locationId})`);
        return res.json({
            id: result.insertId,
            name,
            location_id: locationId
        });
    }
    catch(error) {
        console.log(error);
        return res.status(500).json({
            message: 'Internal server error',
        });
    }
});

app.listen(process.env.NODE_PORT || 5000);
