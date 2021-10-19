import 'package:designs_ui/Screens/account_details.dart';
import 'package:designs_ui/Screens/add_card.dart';
import 'package:designs_ui/Screens/add_money.dart';
import 'package:designs_ui/Screens/pin_security.dart';
import 'package:designs_ui/Screens/settings.dart';
import 'package:designs_ui/Screens/whom_pay.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container( 
          height: 40,
          width: 40,         
          decoration: BoxDecoration(             
              shape: BoxShape.circle,
              color: Colors.grey
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('RC')
            ],
          ),
          ),
        backgroundColor: Colors.transparent,
        actions: [
        Icon(Icons.bar_chart_sharp),
        SizedBox(width: 15,),
        Icon(Icons.star),
        SizedBox(width: 15,),
        Icon(Icons.notifications_active),
         SizedBox(width: 15,),
      ],
      ),
       drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Add Money'),
              onTap: () {                
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context)=> AddMoney()));
              },
            ),
            ListTile(
              title: const Text('Add Card'),
              onTap: () {                
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context)=> AddCard()));
              },
            ),
            ListTile(
              title: const Text('Whom Pay'),
              onTap: () {                
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context)=> WhomPay()));
              },
            ),
            ListTile(
              title: const Text('Account Details'),
              onTap: () {                
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context)=> AccountDetails()));
              },
            ),
             ListTile(
              title: const Text('Settings'),
              onTap: () {                
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Settings()));
              },
            ),
             ListTile(
              title: const Text('Pin & Security'),
              onTap: () {                
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context)=> PinSecurity()));
              },
            ),
             ListTile(
              title: const Text('Cards'),
              onTap: () {                
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context)=> PinSecurity()));
              },
            ),
          ],
        ),
      ),
      body: Column(
         children: [
           SizedBox(height: 15,),
           Row(
            children: [
            SizedBox(width: 10),
            TextButton(onPressed: (){}, child: Text("Accounts", style: TextStyle(color: Colors.black, backgroundColor: Colors.white),)),
            TextButton(onPressed: (){}, child: Text("Card", style: TextStyle(color: Colors.grey, backgroundColor: Colors.transparent))),
            TextButton(onPressed: (){}, child: Text("Stocks", style: TextStyle(color: Colors.grey, backgroundColor: Colors.transparent))),
            TextButton(onPressed: (){}, child: Text("Crypto",style: TextStyle(color: Colors.grey, backgroundColor: Colors.transparent))),
            TextButton(onPressed: (){}, child: Text("Vaults",style: TextStyle(color: Colors.grey, backgroundColor: Colors.transparent)))
          ]
           ),
           Row(
            children: [
               Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Card(                 
                     color: Colors.white,
                     margin: EdgeInsets.all(20),
                     elevation: 0,
                     child: Row(
                       children: [
                         Text("€0", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                         Icon(Icons.arrow_drop_down, color: Colors.blueAccent,),
                         SizedBox(width: 210,),
                         Column(
                           mainAxisAlignment: MainAxisAlignment.end,
                           children: [
                             Icon(Icons.circle_sharp, size: 50,),
                           ],
                         ),                         
                       ],                    
                     ),                                                       
                   ),
                 ],
               )
             ],
           ),
           Row(
             children: [
               Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Card(                 
                     color: Colors.white,
                     margin: EdgeInsets.all(20),
                     elevation: 0,
                     child: Row(
                       children: [
                         Text("€0", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                         Icon(Icons.arrow_drop_down, color: Colors.blueAccent,),
                         SizedBox(width: 210,),
                         Column(
                           mainAxisAlignment: MainAxisAlignment.end,
                           children: [
                             Icon(Icons.circle_sharp, size: 50,),
                           ],
                         ),                         
                       ], 
                     )
                  
                   )
                 ]
               )
             ]
           )
         ]
      )     
      
      
    );
  }
}