const express = require('express')
const app = express();
const port = 8080

app.get('/', (req, res) => {
    res.send('Haii saya muhammad fauzi');
});

app.listen(port, () => {
    console.log(`server berjalan di http;//localhost:${port}`);
});
