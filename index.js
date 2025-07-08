const express=require('express');

const app=express();

app.use(express.json());
app.use(express.urlencoded({extended: true}));

const peoductList=[];
app.listen(2000, ()=>{
    console.log('Connected to Server port 2000');
})

//post api
app.post('/api/addProduct', (req, res)=>{
    console.log("Result:", req.body);

    const pdata={
        "id": productData.length+1,
        "pname": req.body.pname,
        "pprice": req.body.pprice,
        "pdes": req.body.pdes,
    };

    productData.push(pdata);
    console.log("FInal", pdata);

    res.status(200).send({
        "status_code": 200,
        "message": 'Product added successfully',
        "product": pdata
    }
    );

    
})