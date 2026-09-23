#!/usr/bin/node
const request = require('request');

request.get(process.argv[2], (err, response, body) => {
  if (err) {
    console.log(err);
  } else {
    const completed = {};
    JSON.parse(body).forEach((task) => {
      if (task.completed) {
        completed[task.userId] = (completed[task.userId] || 0) + 1;
      }
    });
    console.log(completed);
  }
});
