import 'package:flutter/material.dart';

class PinSecurity extends StatefulWidget {
  const PinSecurity({ Key? key }) : super(key: key);

  @override
  _PinSecurityState createState() => _PinSecurityState();
}

class _PinSecurityState extends State<PinSecurity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[350],
      ),
      backgroundColor: Colors.grey[350],
      body: Container(
        
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        children: [
                          Text("PIN & Security", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),)
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Card(
                        child: Column(
                          children: [
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Row(
                                  children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(Icons.payment, size: 45,),
                                        
                                      ),
                                      Column( 
                                        children: [
                                        Text('VISA **8326', style: TextStyle(fontWeight: FontWeight.bold),),
                                        SizedBox(height: 5,),
                                        Column(
                                          children: [
                                           Text('Virtual'),
                                          ],
                                        )
                                      ],), 
                                  ],
                                  
                                ),
                              )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
               Padding(
                 padding: const EdgeInsets.all(10.0),
                 child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          children: [
                            Text("PIN Settings", style: TextStyle(fontSize: 14, color: Colors.grey),)
                          ],
                        ),
                      )
                    ],
                  ),
               ),
                 Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Card(
                        child: Column(
                          children: [
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Row(
                                    children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Icon(Icons.lock, color: Colors.blue,),
                                          
                                        ),
                                        Column( 
                                          children: [
                                          Text('Unblock CVV', style: TextStyle(fontWeight: FontWeight.bold),),
                                          SizedBox(height: 5,),
                                          Column(
                                            children: [
                                             Text('Use after exceeding 3'),
                                            ],
                                          )
                                        ],), 
                                    ],
                                    
                                  ),
                                ),
                              )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      
    );
  }
}