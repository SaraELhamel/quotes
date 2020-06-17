const express = require('express');
const app = express();
// const path = require('path');
// app.use(express.static(path.join(__dirname,"style")));
var bodyParser = require('body-parser');
 var mysql      = require('mysql');
 var connection = mysql.createConnection({
   host     : 'localhost',
   user     : 'root',
   password : '',
   database: 'citations'
 });
 var urlencodedParser = bodyParser.urlencoded({
    extended: false
 })
 connection.connect(function (error) {
    //condition connect
     if (!!error) {
        console.log('Failed to connect :(');
     } else {
         console.log('Connected :D');
     }

 });
 connection.query('SELECT * FROM quotes', (err,result,fields) => {
    if(err) throw err;
   console.log('Data received :');
   console.log(result);
  });
    const quotes = { citation: 'The sunrise of course doesnt care if we watch it or not it will keep on being beautiful even if we dont look at it ' ,auteur:'Gene Amole',source:'TheMindsetJournal' };
    connection.query('INSERT INTO quotes SET ?', quotes, (err, res) => {
       if(err) throw err;
    console.log('Last insert ID:', res.insertId);
    });
     connection.query(
     'UPDATE quotes SET auteur = ? Where ID = ?',
     ['Ghandi', 2],
     (err, result) => {
      if (err) throw err;
       console.log(`Changed ${result.changedRows} row(s)`);
     }
   );
   connection.query(
     'DELETE FROM quotes WHERE id = ?', [1], (err, result) => {
        if (err) throw err;
       console.log(`Deleted ${result.affectedRows} row(s)`);
     }
    );

app.set('view engine','ejs');

app.get('/', function(req, res) {

    res.render('pages/add');
});

app.post('/', urlencodedParser, function(req, res) {
  const quotes = {id:req.body.id, citation:req.body.citation  ,auteur:req.body.auteur,source:req.body.source  };

  connection.query('INSERT INTO quotes SET ?', quotes, (err, res) => {
    if(err) throw err});
  res.render('pages/add');
});
 app.post('/quotes', urlencodedParser, function(req, res) {
    connection.query('DELETE FROM `quotes` WHERE 8', function(err, rows, fields) {
        if (err) throw err;
        console.log('The solution is: ', rows);
      });
 });


app.listen(process.env.port || 3000,function(){
    console.log('now listening for request');
});