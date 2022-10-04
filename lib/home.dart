import 'package:flutter/material.dart';
import 'dropdown.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homePage(),
    );
  }
}

GlobalKey<ScaffoldState> _ScaffoldKey = GlobalKey<ScaffoldState>();

class homePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _ScaffoldKey,
      drawer: Drawer(
        backgroundColor: Colors.blue,
        child: ListView(
          children: [
            DrawerHeader(
              child: Container(
                height: 30.0,
                color: Colors.white,
                child: Row(
                  children: [
                      Image.asset('assets/jncb_logo.png',
                      width: 170,
                      height: 170,
                      ) ,
                  ],
                ),
              ),
            ),
            const ListTile(
              title: Text('Transfer',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25.0
                ),
              ),
            ),
            // const Divider(
            //   thickness: 2,
            // ),
            const ListTile(
              title: Text('Bill Payment',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25.0
                ),
              ),
            ),
            // const Divider(
            //   thickness: 2,
            // ),
            const ListTile(
              title: Text('Prepaid Top-Up',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25.0
                ),
              ),
            ),
            // const Divider(
            //   thickness: 2,
            // )
          ],
        ),
      ),
      extendBody: true,
      backgroundColor: Colors.transparent,
      body: 
      ListView(
      children:[
      Container(
        height: 900,
        decoration: const BoxDecoration(color: Colors.white),
        child: Column(
          children: [
            Stack(
              children: [
                // BACKGROUND IMAGE
                Container(
                  height: 250.0,
                  decoration: const BoxDecoration(
                    shape: BoxShape.rectangle,
                    image: DecorationImage(
                        image: AssetImage("assets/ncb_background1.png"),
                        fit: BoxFit.cover,
                        colorFilter:
                            ColorFilter.mode(Colors.black38, BlendMode.darken)),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(80),
                      bottomRight: Radius.circular(80),
                    ),
                  ),
                ),

                // TOP NAVIGATION
                Container(
                  padding:
                      const EdgeInsets.only(top: 10.0, right: 20.0, left: 15.0),
                  height: 70.0,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 135.0,                         
                          child: Row(
                            children:[
                                TextButton.icon(
                                icon: const Icon(Icons.menu, size: 45),
                                label: const Text(''),
                                onPressed: () =>{
                                  _ScaffoldKey.currentState?.openDrawer(),
                                },
                                style: TextButton.styleFrom(
                                    backgroundColor: Colors.transparent,
                                    foregroundColor: Colors.white),
                                ),
                                Image.asset('assets/jncb_logo1.png',
                                width: 55,
                                height: 45,
                                )
                           ]
                          ),
                        ),
                        TextButton(
                           onPressed: () { 
                              Navigator.pop(
                                context, 
                                MaterialPageRoute(builder: (context) =>  homePage()),
                              );
                             },
                          style: TextButton.styleFrom(
                              padding: const EdgeInsets.only(top: 10)),
                          child: const Text(
                            'Log Out',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontFamily: 'Mulish'),
                          ),
                        )
                      ]
                    ),
                ),
                // END TOP NAVIGATION

                // GREETING
                Container(
                  padding: const EdgeInsets.only(top: 140.0, left: 22.0),
                  child: Column(
                    children: const [
                      Text(
                        'Good Morning, Dejhon',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 23,
                            fontFamily: 'Mulish'),
                      )
                    ],
                  ),
                ),
                // END OF GREETINGS

                // CARDS
                Container(
                  padding: const EdgeInsets.only(top: 200, left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 90.0,
                            width: 100.0,
                            decoration: const BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                )),
                            child: Column(children: [
                              Container(
                                width: 105.0,
                                padding: const EdgeInsets.only(
                                    top: 10.0, bottom: 10.0),
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                  ),
                                ),
                                child: const Center(
                                  child: Icon(
                                    Icons.payment_outlined,
                                    color: Colors.black,
                                    size: 28,
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.only(top: 8.0),
                                decoration:
                                    const BoxDecoration(color: Colors.blue),
                                child: const Center(
                                  child: Text(
                                    'Transfer',
                                    style: TextStyle(fontSize: 19),
                                  ),
                                ),
                              )
                            ]),
                          ) // END OF CHILD CONTAINER
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 90.0,
                            width: 100.0,
                            decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 3, 44, 78),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                )),
                            child: Column(children: [
                              Container(
                                width: 105.0,
                                padding: const EdgeInsets.only(
                                    top: 10.0, bottom: 10.0),
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                  ),
                                ),
                                child: const Center(
                                  child: Icon(
                                    Icons.credit_score_outlined,
                                    color: Colors.black,
                                    size: 28,
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.only(top: 8.0),
                                decoration: const BoxDecoration(
                                    color: Color.fromARGB(255, 3, 44, 78)),
                                child: const Center(
                                  child: Text(
                                    'Bill Pay',
                                    style: TextStyle(
                                        fontSize: 19, color: Colors.white),
                                  ),
                                ),
                              )
                            ]),
                          ) // END OF CHILD CONTAINER
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 90.0,
                            width: 100.0,
                            decoration: const BoxDecoration(
                                color: Colors.yellow,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                )),
                            child: Column(children: [
                              Container(
                                width: 105.0,
                                padding: const EdgeInsets.only(
                                    top: 10.0, bottom: 10.0),
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                  ),
                                ),
                                child: const Center(
                                  child: Icon(
                                    Icons.send_to_mobile,
                                    color: Colors.black,
                                    size: 28,
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.only(top: 8.0),
                                decoration:
                                    const BoxDecoration(color: Colors.yellow),
                                child: const Center(
                                  child: Text(
                                    'Top-Up',
                                    style: TextStyle(fontSize: 19),
                                  ),
                                ),
                              )
                            ]),
                          )
                          // END OF CHILD CONTAINER
                        ],
                      )
                      // End OF MAIN COLUMN
                    ],
                  ),
                  // END OF MAIN ROW
                )
                // END OF CARDS
              ],
            ),
            // DROPDOWN LIST
            Container(
              padding: const EdgeInsets.only(top: 1, left: 20, right: 20),
              child: Container(
                padding: const EdgeInsets.only(top: 15),
                child: Column(
                  children: [
                    DropDownList(),
                    TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor:const Color.fromARGB(255, 131, 130, 130),
                        padding: const EdgeInsets.only(left: 20, right: 20)                      
                      ),
                      onPressed: (){}, 
                      child: const Text("Don't see all of your accounts?",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontStyle: FontStyle.italic,
                        letterSpacing: 0.5
                      ),
                      )
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      ]
     )
    );
  }
}
