const express = require('express')//Import the express module
const app = express()//Create an instance of an express application

app.all('*', function (req, res, next) {
	res.header("Access-Control-Allow-Origin", "*");
	res.header("Access-Control-Allow-Headers", "X-Requested-With");
	res.header("Access-Control-Allow-Methods", "PUT,POST,GET,DELETE,OPTIONS");
	res.header("X-Powered-By", ' 3.2.1')
	res.header("Content-Type", "application/json;charset=utf-8");
	next();//Pass control to the next middleware in the stack
});

app.use(express.json())

let user = require('./api.js');
app.use(user); //Use the user API as a route handler

module.exports = app //Export the app for use in other modules
const port =4001
app.listen(port, () => {
	console.log(`app is running at http://localhost:${port}`)
})