const express = require('express');
const app = express();
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

  
app.get("/", (req, res) => {
  connection.query('SELECT * FROM quotes', (err, rows) => {
      if (err) {
          console.log("Error getting data")
      } else {
          res.render('pages/Home',{ quotesdata : rows})
      }
  })
});


 app.set('view engine','ejs');

 app.get('/', function(req, res) {

     res.render('pages/edit');
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

 app.get('/update/:id',(req, res) => {
  
  res.render('pages/edit');

  
});
app.get('/quotes', (req, res, next) => {
  const sql = "SELECT * FROM quotes";
  const query = conn.query(sql, (err, rows) => {
      if (err) throw err;


      res.render('/pages/Home', {
          quotes: rows
      });
       
  })
 })

app.post('/update/:id',urlencodedParser,(req, res) => {
  
 
  let sql = "Update quotes SET  citation='"+req.body.citation+"', auteur='"+req.body.auteur+"', source='"+req.body.source+"' where id ='"+req.params.id+"'";
  console.log(sql)
  let query = connection.query(sql,(err, results) => {
    if(err) throw err;
    res.render('pages/edit');
  });
});


app.listen(process.env.port || 3000,function(){
    console.log('now listening for request');
});