var mysql = require('mysql');

var con = mysql.createConnection({
  server: "localhost",
  user: "root",
  password: "admin",
database: "deals2partyDB"

});

con.connect(function(err) {
  if (err) throw err;
  con.query("SELECT * FROM Course_Type", function (err, result, fields) {
    if (err) throw err;
    console.log(result);
  });
});