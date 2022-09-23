const express = require('express')
const fs = require("fs");
const app = express()
const port = 3000
const shell = require('shelljs')

app.get('/addFile/:num', (req, res) => {
    const reqNum = req.params.num;
    fs.writeFileSync(`/mnt/test${reqNum}.txt`, `This is file number ${reqNum}!`);
    res.status(200).send(`file ${reqNum} added`);
})

app.get('/addBigFile/:num', (req,res) => {
	console.log(req.params);
	const reqNum = req.params.num;
	console.log(reqNum)
	shell.exec(`./big_file.sh ${reqNum} `);
	        
	res.status(200).send(`Large File bigFile${reqNum} Added`);
});

app.listen(port, () => {
    console.log(`Example app listening on port ${port}`)
})
