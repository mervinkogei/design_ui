import 'package:flutter/material.dart';

class AddCard extends StatefulWidget {
  const AddCard({ Key? key }) : super(key: key);

  @override
  _AddCardState createState() => _AddCardState();
}

class _AddCardState extends State<AddCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 15),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Text("Card in your name", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),)],
                ) 
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 10),
              child: Column(  
                mainAxisAlignment: MainAxisAlignment.center,              
                children: [
                  Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.lock, color: Colors.blue,),
                        Row(
                          mainAxisSize: MainAxisSize.max ,
                          children: [
                            Align(alignment: Alignment.center),
                             Text("Processed securely by PCI DSS", style: TextStyle(color: Colors.blue, fontSize: 14),)
                          ],
                        )                        
                      ],                      
                    )
                  )                  
                ],
              ),
            ),
            SizedBox(height:20,),
            Column(
              children: [
                Card(
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Column(
                            children: [
                              SizedBox(height:20,),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Column(
                                children: [
                                  Text("Debit or Credit card number", style: TextStyle(fontSize: 12,color: Colors.blue),),
                                ],
                              ),
                              ),
                              TextField(
                               decoration: InputDecoration(
                                 hintText: "Card Number",   
                                 suffixIcon:  Icon(Icons.photo_camera, color: Colors.blue,), 
                                                                                        
                               ),
                              
                             ),
                              
                            ],
                          ),                       
                         
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 20,),
              Column(
              children: [
                Card(
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            children: <Widget>[
                              // Container(
                              //   child: CircleAvatar(
                              //     child: Icon(Icons.payment),
                              //   ),
                              // ),
                              // Spacer(),
                              Container(
                                child: Column(
                                  children: [
                                    Text("Expiration Date"),
                                    SizedBox(height: 10,),
                                    Text("___________________", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),
                                  ],
                                ),
                              ),
                              Spacer(),
                              Container(
                               child: Column(
                                  children: [
                                    Text("CVV"),
                                    SizedBox(height: 10,),
                                    Text("_____________________", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold)),
                                  ],
                                ),
                              ),
                              
                            ],
                          ) 
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
             Container(
              //  margin: EdgeInsets.only(bottom: 20),
               child: Expanded(
                  child: Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blueGrey
                      ),
                        onPressed: () => {},
                        child: Text('Add €10',
                         ),
                    ),
                  ),
                  
        ),
             ),

          ],
      
          
        ),
      ),
      
      
    );
  }
}