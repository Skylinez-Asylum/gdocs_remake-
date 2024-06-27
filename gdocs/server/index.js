const express = require('express');
const mongoose = require('mongoose');
const authRouter = require('./routes/auth');

const PORT = process.env.PORT | 3001; 

const app = express();
app.use(express.json());
const DB="mongodb+srv://skylinez:skylinez@cluster0.ndryp9w.mongodb.net/?retryWrites=true&w=majority";
app.use(authRouter);
mongoose
    .connect(DB)
    .then(()=>{
    console.log("Connection Succesful");
    })
    .catch((err)=>{
    console.log(err);
    });


app.listen(PORT,"0.0.0.0",()=>{
    console.log('connected at port 3001');
});