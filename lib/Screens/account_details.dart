import 'package:flutter/material.dart';

class AccountDetails extends StatefulWidget {
  const AccountDetails({ Key? key }) : super(key: key);

  @override
  _AccountDetailsState createState() => _AccountDetailsState();
}

class _AccountDetailsState extends State<AccountDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[350],
      ),
      body: Container(
        color: Colors.grey[350],
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: [
                        SizedBox( height: 20,),
                        Text("Account details", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(child: ElevatedButton(onPressed: (){},
                   child: Text('Individual', style: TextStyle(color: Colors.black),),
                   style: ElevatedButton.styleFrom(
                     primary: Colors.white,
                     shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(10.0),
              ),
                   ),
                   )),
                   SizedBox(width: 5,),
                   Expanded(child: ElevatedButton(onPressed: (){},
                   child: Text('Business'),
                   style: ElevatedButton.styleFrom(
                     primary: Colors.grey,
                     shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(10.0),
              ),
                   ),
                   )),
                ],
              ),
              
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Column(
                  children: [
                    TextField(
                       decoration: InputDecoration(
                         labelText: 'Country of recipients bank',
                      hintText: "Spain",   
                      suffixIcon:  Icon(Icons.arrow_drop_down, color: Colors.blue,),                                                                    
                      ),  
                     ),
                  ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Column(
                  children: [
                    TextField(
                       decoration: InputDecoration(
                         labelText: 'Currency',
                      hintText: "Euro",   
                      suffixIcon:  Icon(Icons.arrow_drop_down, color: Colors.blue,),                                                                    
                      ),  
                     ),
                  ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Column(
                  children: [
                    TextField(
                       decoration: InputDecoration(
                         labelText: 'IBAN',
                      hintText: "ES  ##### ##### #####",                                                                   
                      ),  
                     ),
                  ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Column(
                  children: [
                    TextField(
                       decoration: InputDecoration(
                         labelText: 'First and Middle names',                                                                 
                      ),  
                     ),
                  ],
              ),
            ),
             Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Column(
                  children: [
                    TextField(
                       decoration: InputDecoration(
                         labelText: 'Last name(s)',                                                                    
                      ),  
                     ),
                  ],
              ),
            ),
             Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Column(
                  children: [
                    TextField(
                       decoration: InputDecoration(
                         labelText: 'Email',                                                                  
                      ),  
                     ),
                     Column(
                       children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child:  Text("Optional"),
                        )
                       ],
                     )
                  ],
              ),
            ),
            Container(
              child: Column(
                children: [
                 Align(
                   alignment: Alignment.bottomCenter,
                   child:  ElevatedButton(onPressed: (){}, 
                        child: Text('Add beneficiary')),
                 )
                ],
              ),
            ),

          
          ],
        ),
      ),      
    );
  }
}