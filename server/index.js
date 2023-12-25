const express = require("express");
const mongoose = require("mongoose");
const authRouter = require("./routes/auth");

const PORT = 3000;
const app = express();
const DB = "mongodb+srv://sanvi:%23remember04@cluster0.sayt4yt.mongodb.net/?retryWrites=true&w=majority";


// Middleware to parse JSON requests
app.use(express.json());

// Use the authRouter
app.use(authRouter);

mongoose
  .connect(DB)
  .then(() => {
    console.log('Connection successful');
  })
  .catch((e) => {
    console.log(e);
  });

app.listen(PORT, () => {
  console.log(`connected at port ${PORT}`);
});


