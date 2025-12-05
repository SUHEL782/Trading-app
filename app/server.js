const express = require('express');
const app = express();
const port = 8080;

app.get('/', (req, res) => res.send('Hello from private EC2!'));
app.get('/health', (req, res) => res.send('ok'));

app.listen(port, () => console.log(`Server running on port ${port}`));
