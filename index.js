let mysql = require('mysql2');

let con = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: 'root',
  database: 'studentdb',
});

con.connect(function (error) {
  if (error) throw error;
  console.log('connected successfully');
});

con.query('select * from students', function (error, result) {
  if (error) throw error;
  console.log(result[0].name);
});
