import 'package:flutter/material.dart';
import 'package:awesome_card/awesome_card.dart';

class Cards extends StatefulWidget {
  const Cards({ Key? key }) : super(key: key);

  @override
  _CardsState createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[350],
      ),
      backgroundColor: Colors.grey[350],
      body: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 10),
                child: Row(
                  children: [
                    Text("Cards", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),)
                  ],
                ),
              ),
              Column(
                children: [
                  Card(
                    color: Colors.grey[350],
                    elevation: 0,
                    child: SizedBox(
                      child: Column(
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: CreditCard(
                                  cardNumber: "*** *** *** 7854",
                                  cardExpiry: "10/25",
                                  cardHolderName: "Card Holder",
                                  cvv: "456",
                                  bankName: "Virtual",
                                  cardType: CardType.visa, 
                                  showBackSide: false,
                                  frontBackground: CardBackgrounds.black,
                                  backBackground: CardBackgrounds.white,
                                  showShadow: true,
                                  textExpDate: 'Exp. Date',
                                  textName: 'Name',
                                  textExpiry: 'MM/YY'
                            ),
                              ),
                            ],
                          )
                        ],
                      ),
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
                         children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                         Align(
                                           alignment: Alignment.topRight,
                                           child: Icon(Icons.info),
                                         ),
                                          Text("Start Shopping Online", style: TextStyle(fontWeight: FontWeight.bold),),
                                          SizedBox(height: 5,),
                                         Text("Use this card to make more secure transactions"),
                                      ],
                                      
                                    ),
                                  ),
                                )
                            ],
                    ),
                  ),
                )
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  child: Icon(Icons.ac_unit, color: Colors.blue,),
                                  ),
                                SizedBox(width: 10,),
                                Text("Unfreezed Card", style: TextStyle(fontWeight: FontWeight.bold),)
                              ],
                            ),
                            SizedBox(height: 20,),
                            Row(
                              children: [
                                Icon(Icons.settings, color: Colors.blue,),
                                SizedBox(width: 10,),
                                Text("Settings", style: TextStyle(fontWeight: FontWeight.bold),),
                                
                              ],
                            )
                          ],
                        ),
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