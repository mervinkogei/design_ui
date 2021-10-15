import 'package:flutter/material.dart';

class WhomPay extends StatefulWidget {
  const WhomPay({ Key? key }) : super(key: key);

  @override
  _WhomPayState createState() => _WhomPayState();
}

class _WhomPayState extends State<WhomPay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[350],
        actions: [
        Icon(Icons.search, color: Colors.black,),
        SizedBox(width: 15,),
        Icon(Icons.wifi_tethering_sharp, color: Colors.black,),
        SizedBox(width: 15,),
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Row(
            children: [
              ElevatedButton.icon(onPressed: (){},
               icon: Icon(Icons.add), 
               label: Text('new'),
               style: ElevatedButton.styleFrom(
            shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(20.0),
            ),
          ),
               )
            ],
          ),
        )
      ],
      ),
      body: Container(
        color: Colors.grey[350],
        child: Column(
          children: [
            Row(              
              children: [
                SizedBox(width: 5,),
                ElevatedButton(onPressed: (){},
               child: Text('R', style: TextStyle(color: Colors.blue),),
               style: ElevatedButton.styleFrom(
                 primary: Colors.lightBlue[100],
            shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(20.0),
            ),
          ),
          ),
          SizedBox(width: 10,),
               ElevatedButton(onPressed: (){},
               child: Text('Contacts', style: TextStyle(color: Colors.blue),),
               style: ElevatedButton.styleFrom(
                 primary: Colors.lightBlue[100],
            shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(20.0),
            ),
          ),
               ),
               SizedBox(width: 10,),
               ElevatedButton(onPressed: (){},
               child: Text('Accounts', style: TextStyle(color: Colors.blue),),
               style: ElevatedButton.styleFrom(
                 primary: Colors.lightBlue[100],
            shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(20.0),
            ),
          ),
               ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  SizedBox(height: 15,),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text("All"),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Icon(Icons.person),
                          SizedBox(width: 15,),
                          Expanded(child: Text("Your contact list is empty. Contacts will appear when you add them"))
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
      
    );
  }
}