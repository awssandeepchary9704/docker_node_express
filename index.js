const express = require("express")
const mongoose = require("mongoose")
const app = express()

mongoose
    .connect("mongodb://samantha:samantha123@mongo:27017/?authSource=admin")
    .then(()=>console.log("Successfully connected to MongoDB"))
    .catch((e)=>console.log(e));
app.get("/",(req,res) => {
    res.send("<h1> Doing this on sunday </h1>");
})
const port = process.env.PORT || 3000;
app.listen(port,() => console.log(`listening on the the port ${port}`));


