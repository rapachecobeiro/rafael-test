// NPM Imports
const express = require("express");
const app = express();

console.log("Starting App")

app.get("/", (req, res) => {
  res.send("Hello Actions!");
});

// Run server on port
const server = app.listen(process.env.PORT || 8080, () => {
  console.log("Server is listening on port 8080");
});
