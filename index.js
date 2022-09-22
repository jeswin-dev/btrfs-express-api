const express = require('express')
const fs = require("fs");
const app = express()
const port = 3000

app.get('/manyFile', (req, res) => {
    fs.writeFileSync('/home/cube', 'Hey there!');
})

app.listen(port, () => {
    console.log(`Example app listening on port ${port}`)
})