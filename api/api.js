
var app = require("express").Router();
const DBPool = require('./crowdfunding_db.js')

app.get('/getFundraisersList', (req, res) => {
    let searchSql = 'SELECT * from `FUNDRAISER`'
    DBPool.query(searchSql, [], (results) => {
        let result = results.results
        res.send(result);
    })
});
app.get("/Fundraisers/getActiveFundraisers", (req, res) => {
    let param = req.query
    let searchSql = 'SELECT * from `FUNDRAISER` WHERE ACTIVE = ?'
    DBPool.query(searchSql, [param.active], (results) => {
        let result = results.results
        res.send(result);
    })
});
app.get("/Fundraisers/getOneFundraiser", (req, res) => {
    let param = req.query
    if (param.CATEGORYID) {
        let searchSql = 'SELECT * from `FUNDRAISER` WHERE CATEGORYID = ?'
        DBPool.query(searchSql, [param.CATEGORYID], (results) => {
            let result = results.results
            res.send(result);
        })
    } else {
        let searchSql = 'SELECT * from `FUNDRAISER`'
        DBPool.query(searchSql, [], (results) => {
            let result = results.results
            res.send(result);
        })
    }

});
app.get("/Fundraisers/Details", (req, res) => {
    let param = req.query
    let searchSql = 'SELECT * from `FUNDRAISER` WHERE FUNDRAISERID = ?'
    DBPool.query(searchSql, [param.FUNDRAISERID], (results) => {
        let result = results.results
        res.send(result);
    })
});
app.get("/Fundraisers/List", (req, res) => {
    let searchSql = 'SELECT * from `CATEGORY`'
    DBPool.query(searchSql, [], (results) => {
        let result = results.results
        res.send(result);
    })
});


module.exports = app;