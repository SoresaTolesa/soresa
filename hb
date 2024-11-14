const express = require('express');
const bodyParser = require('body-parser');

const app = express();
app.use(bodyParser.json());


app.get('/api/CBE/data/:parameter', (req, res) => {
    const {parameter} = req.params;
    res.json({
        amount: 1000.00,
        account_no: "1000095047444",
        date: "20241113",
        penality: 200.00
    });

    res.json({message: "Recieved!"});
});

app.post('/api/CBE/bill', (req, res) => {
    const data = req.body;
    res.json({message: "succussful", status: "0", data: data});
});


const PORT = 4500;
app.listen(PORT, () => {
    console.log("Server listening on port 4500");    
});
