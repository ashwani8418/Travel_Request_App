
const cds = require('@sap/cds');
module.exports=(srv)=>{
    srv.before('POST','Travel',async(req)=>{
       let data= await req.data;
      const tx=cds.transaction(req.data)
      const affectedRows =  tx.run (
        INSERT= {INSERT:{
            into: { ref: ["Travel.Travel"] },
            columns: [ "origin","destination","price","Status","TDate_departure","TDate_return","TType","Mode","RoundTrip","Accomandation" ],
            values: [ data.origin,data.destination,data.price,data.Status,data.TDate_departure,data.TDate_return,data.TType,data.Mode,data.RoundTrip,data.Accomandation]
          }}
      )
     // if (affectedRows > 0)  console.log(200, "Sucess")
    console.log(req.data);
})
}