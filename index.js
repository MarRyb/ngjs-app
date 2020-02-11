var express = require('express');
var app = express();
var appDir = __dirname + '/public';

app.use(express.static(appDir));

app.get('*', function(req, res) {
  return res.status(200).sendFile(appDir + '/index.html');
});

app.listen(8080);
console.log('App listening on port 8080');
