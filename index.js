const express = require('express')

const app = express()

app.get('/',(req,res)=>{
    return res.json('Working message')
})

app.listen(4000,()=>{
    console.log('Listen :  http://localhost:4000')
})