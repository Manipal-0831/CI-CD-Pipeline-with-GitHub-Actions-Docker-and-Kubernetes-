const express = require('express');
const app = express();
// Note: We use 8080 as a common container port
const port = 8080; 

app.get('/', (req, res) => {
  res.send('CI/CD Pipeline Deployed on Minikube!');
});

app.listen(port, () => {
  console.log(`App running on port ${port}`);
});
