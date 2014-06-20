"use strict";

var request = require('supertest');
var express = require('express');


var app = express();
var expectedBuffer = new Buffer(10);

expectedBuffer[0] = 234;
expectedBuffer[1] = 235;
expectedBuffer[2] = 196;
expectedBuffer[3] = 189;
expectedBuffer[4] = 10;
expectedBuffer[5] = 183;
expectedBuffer[6] = 66;
expectedBuffer[7] = 150;
expectedBuffer[8] = 173;
expectedBuffer[9] = 235;


app.get('/',  function(req, res) {
    res.setHeader('Content-Type', 'application/octet-stream');
    res.setHeader('Content-Length', expectedBuffer.length);
    res.write(expectedBuffer);
    res.end();
});

request(app)
.get('/')
.expect(200)
.end(function(err, res) {
    if (err) throw err;

    console.log("Received response:");
    console.log(res);
    
    var receivedBuffer = new Buffer(res.text);

    console.log("\nExpected buffer len: " + expectedBuffer.length + " data : ");
    console.log(expectedBuffer);
    console.log("Received buffer len: " + receivedBuffer.length + " data : ");
    console.log(receivedBuffer);

    if (expectedBuffer.length !== receivedBuffer.length) {
         throw new Error("buffers size does not match");
    }
});
