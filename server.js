// server.js
// set up ======================================================================
var express = require('express');
var app = module.exports = express();
var http = require('http').Server(app);
var port = process.env.PORT || 8083;
var morgan = require('morgan');
var bodyParser = require('body-parser');
var favicon = require('serve-favicon');
// CORS =======================================================================
app.use(function(req, res, next) {
    res.header("Access-Control-Allow-Origin", "*");
    res.header('Access-Control-Allow-Methods', 'GET,PUT,POST,DELETE,OPTIONS');
    res.header('Access-Control-Allow-Headers', 'Content-Type, Authorization, Content-Length, X-Requested-With,x-access-token');
    if ('OPTIONS' == req.method) {
        res.sendStatus(200);
    } else {
        next();
    }
});
app.enable('trust proxy');
// configuration ===============================================================
app.use(morgan('dev')); // log every request to the console
app.use(bodyParser.json()); // get information from html forms
app.use(bodyParser.urlencoded({ extended: true }));
app.set('view engine', 'ejs'); // set up ejs for templating
app.use(express.static(__dirname + '/public'));
app.use(favicon(__dirname + '/public/lance.ico'));
// routes ======================================================================
require('./routes/api/misc.js')(app);
// launch ======================================================================
http.listen(port);
console.log('The magic happens on port ' + port);
