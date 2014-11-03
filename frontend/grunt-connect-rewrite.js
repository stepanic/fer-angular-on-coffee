var fs = require('fs'),
    url = require('url');

module.exports = function (rootDir, indexFile) {
  indexFile = indexFile || "index.html";

  return function(req, res, next){
    var path = url.parse(req.url).pathname;

    fs.readFile('./' + rootDir + path, function(err, buf){
      if (!err) return next();

      fs.readFile('./' + rootDir + '/' + indexFile, function (error, buffer) {
        if (error) return next(error);

        resp = {
          headers: {
              'Content-Type': 'text/html',
              'Content-Length': buffer.length
          },
          body: buffer
        };
        res.writeHead(200, resp.headers);
        res.end(resp.body);
      });
    });
  }
};
