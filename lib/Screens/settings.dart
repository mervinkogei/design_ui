import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({ Key? key }) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[350],
      ),
      backgroundColor: Colors.grey[350],
      body:Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 15),
              child: Row(
                children: [
                  Text("Settings", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
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

                      ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5,),
            Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text("Settings"),
                  ),
                )
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        //Section......1
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Row(
                                    children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Icon(Icons.speed, size: 25,color: Colors.blue,),
                                          
                                        ),
                                        Column( 
                                          children: [
                                          Text('Speeding limit', style: TextStyle(fontWeight: FontWeight.bold),),
                                          SizedBox(height: 5,),
                                          Column(
                                            children: [
                                             Text('Set monthly spending limit'),
                                            ],
                                          )
                                        ],
                                        ), 
                                    ],
                                    
                                  ),
                                )
                                ],
                          
                        ),

                        // Section .....2
                           Column(
                          //Section......1
                            children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Row(
                                    children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Icon(Icons.add_sharp, size: 25, color: Colors.blue,),
                                          
                                        ),
                                        Column( 
                                          children: [
                                          Text('Name your Card', style: TextStyle(fontWeight: FontWeight.bold),),
                                          SizedBox(height: 5,),
                                          Column(
                                            children: [
                                             Text('Add a custom name (optional)'),
                                            ],
                                          )
                                        ],), 
                                    ],
                                    
                                  ),
                                )
                                ],
                          
                        ),

                        // Section .......3
                           Column(
                          //Section......1
                            children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Row(
                                    children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Icon(Icons.delete, size: 25, color: Colors.blue,),
                                          
                                        ),
                                        Column( 
                                          children: [
                                          Text('Terminate Card', style: TextStyle(fontWeight: FontWeight.bold),),
                                          SizedBox(height: 5,),
                                          Column(
                                            children: [
                                             Text('Your card will be permanently terminated'),
                                            ],
                                          )
                                        ],), 
                                    ],
                                    
                                  ),
                                )
                                ],
                          
                        ),
                      ],
                    ),
                    
                  ),
                )
              ],
            )
          ],
        ),
      ),
      
    );
  }
}