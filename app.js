const express = require('express');
const app = express();
const PORT = 8080;

app.get('/', (req, res) => {
  res.send('Hello DevOps World!');
});

app.listen(PORT, () => {
  console.log(`App running on port ${PORT}`);
});

