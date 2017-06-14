const { createServer } = require('http');
const { hostname } = require("os");

const server = createServer((request, response) => {
  response.writeHead(200, {"Content-Type": "text/plain"});
  response.end(`Hello from ${hostname}!`);
});

server.listen(8000);

console.log("Server running at http://127.0.0.1:8000/");
