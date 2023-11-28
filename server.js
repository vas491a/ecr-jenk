'use strict';

const express = require('express');


//constsnt
const PORT = "8080"
const HOST = '0.0.0.0';

//app
const APP = express();
app.get('/', (red,res) => {
  res,send ("hello jenkins world");
});

app.listen (PORT,HOST, () => {
  console.log('running on http://${HOST}:${PORT}');
});
