const express = require("express");
const cors = require("cors");

const data = require("./data/data.json");
const app = express();

const corsOptions = {
  origin: "http://localhost:3000",
  optionsSuccessStatus: 200,
};

 
// Middleware
app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use(cors(corsOptions));

// Routes
app.get("/", (req, res) => {
  res.json({
    message: "Welcome to my application.",
    data: data,
  });
});

app.listen(4000, () => {
  console.log("Server is running on port 4000.");
});