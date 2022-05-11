// gcloud compute ssh --zone "southamerica-east1-b" "backadvanceprimeramachine"  --project "backadvance01"
const express = require('express')

const app = express()

app.get('/',(req,res)=>{
    return res.json({message:'Working message'})
})

app.get('/contact',(req,res)=>{
    return res.json({name:'Juancito',email:'....'})
})

app.listen(4000,()=>{
    console.log('Listen :  http://localhost:4000')
})

console.log('somethingg')


