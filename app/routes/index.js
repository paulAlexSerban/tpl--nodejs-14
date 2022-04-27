const express = require('express');
const router = express.Router();

/* GET home page. */
router.get('/', async (req, res) => {
  res.setHeader("Content-Type", "text/html");
  res.status(200);
  res.send("<h1>Hello world</h1>");
});

module.exports = router;
