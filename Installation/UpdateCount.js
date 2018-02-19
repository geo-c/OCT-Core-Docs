const request = require("request");
const url =
  "http://giv-oct2.uni-muenster.de:8080/api/update_count";
request.get(url, (error, response, body) => {
  console.log("requested");
});