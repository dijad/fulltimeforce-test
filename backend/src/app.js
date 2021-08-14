const express = require('express');
const morgan = require('morgan');

const app = express();

app.set('port', 4000 || process.env.PORT)

app.use(morgan('dev'));

module.exports = app;