import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class AddMoney extends StatefulWidget {
  const AddMoney({ Key? key }) : super(key: key);

  @override
  _AddMoneyState createState() => _AddMoneyState();
}

class _AddMoneyState extends State<AddMoney> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey,
        elevation: 0,
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
                  children: [Text("Add Money", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),)],
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
                        Icon(Icons.shield_rounded, color: Colors.blue,),
                        Row(
                          mainAxisSize: MainAxisSize.max ,
                          children: [
                            Align(alignment: Alignment.center),
                             Text("Your money is protected by licensed banks", style: TextStyle(color: Colors.blue, fontSize: 14),)
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
                          Row(
                            children: [
                              SizedBox(height:30,),
                              Text("EUR", style: TextStyle(fontSize: 16, fontWeight:  FontWeight.bold),),
                              Icon(Icons.arrow_drop_down),
                              Row(  
                                mainAxisSize: MainAxisSize.max,                          
                                children: [
                                  Column(
                                    children: [
                                      Align(
                                    alignment: Alignment.centerRight,
                                    child: Container(
                                      child: Text('10', style: TextStyle(backgroundColor: Colors.lightBlueAccent, fontWeight: FontWeight.bold),),
                                    ),
                                  )
                                    ],
                                  )  
                                ],
                              ),
                            ],
                          ),                          
                          Column(
                                children: [
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Container(
                                      child: Text("Minimum amount is €10"),
                                    ),
                                  )
                                ],
                              )
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
                              Container(
                                child: CircleAvatar(
                                  child: Icon(Icons.payment),
                                ),
                              ),
                              Spacer(),
                              Container(
                                child: Column(
                                  children: [
                                    Text("Debit or credit Card"),
                                    Text("card details added securely"),
                                  ],
                                ),
                              ),
                              Spacer(),
                              Container(
                                child: 
                                ElevatedButton(onPressed: (){}, 
                                child: Text('Change'), style: ElevatedButton.styleFrom(
                                  primary: Colors.lightBlueAccent[100]
                                ),),
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
                        onPressed: () => {},
                        child: Text('Add Money'),
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