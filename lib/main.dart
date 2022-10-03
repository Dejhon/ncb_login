import 'package:flutter/material.dart';
import 'package:ncb_login/home.dart';
import 'checkbox.dart';
import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: loginPage(),
    );
  }
}

class loginPage extends StatelessWidget {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        backgroundColor: Colors.transparent,
        body: Container(
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/ncb_background.png"),
                  fit: BoxFit.fill,                  
                  ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                  Container(
                      height: 110.0,
                      margin: const EdgeInsets.only(top: 290),
                      decoration: const BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50),
                        ),
                      ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 30,
                          margin: const EdgeInsets.only(bottom: 10),
                          padding: const EdgeInsets.only(right:10.0),
                          decoration: const BoxDecoration(
                            border: Border(
                              right: BorderSide(width: 2, color: Colors.white)
                            )
                          ),
                          child: TextButton(
                             onPressed: (){},
                             child: const Text('Activate Your Card',
                             style: TextStyle(fontSize: 16, 
                             color: Colors.white
                              ),
                             ),
                           ),
                        ),
                        Container(
                          height: 30,
                          margin: const EdgeInsets.only(bottom: 10),
                          padding: const EdgeInsets.only(right:20.0),
                          decoration: const BoxDecoration(
                            border: Border(
                              right: BorderSide(width: 2, color: Colors.white)
                            )
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Text('Quick Send',style: TextStyle(color: Colors.amberAccent, fontSize: 16),)
                            ],
                          )
                              // Icon(Icons.attach_money),
                              // TextButton(
                              //   onPressed: (){},
                              //   child: const Text('Quick send',
                              //   style: TextStyle(fontSize: 16, 
                              //   color: Colors.amberAccent
                              //     ),
                              //   ),
                              // ),
                        ),
                        Container(
                          child: TextButton(
                             onPressed: (){},
                             child: const Text('More...',
                             style: TextStyle(fontSize: 16, 
                             color: Colors.white
                              ),
                             ),
                           ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                  height: 300,
                  width: 360,
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  margin: const EdgeInsets.only(bottom: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      const TextField(
                        decoration: InputDecoration(hintText: 'UserName'),
                      ),
                      const TextField(
                        decoration: InputDecoration(hintText: 'Password',
                        suffixIcon: Icon(Icons.remove_red_eye),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: const [
                              checkBox(),
                              Text(
                                'Remember Me',
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                          const Text(
                            'Forget Password?',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children:[
                          TextButton(
                            onPressed: () { 
                              Navigator.push(
                                context, 
                                MaterialPageRoute(builder: (context) =>  homePage()),
                              );
                             },
                            style:TextButton.styleFrom(
                              backgroundColor: Colors.amberAccent,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                              padding: const EdgeInsets.only(left:25, right: 25)
                            ),
                            child: Row(
                              children: const <Widget> [
                                 Text('TOUCH ID LOGIN',
                                 style: TextStyle(color: Colors.black),),
                                 Icon(Icons.fingerprint,color: Colors.black,)
                                 
                                ],
                            ),
                          ),
                           TextButton(
                             style: TextButton.styleFrom(
                              side: const BorderSide(color: Colors.blue, width: 1),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                              padding: const EdgeInsets.only(left:15, right: 15)
                            ),
                             onPressed: (){},
                             child: const Text('SIGN UP',
                             style: TextStyle(fontSize: 16, 
                             color: Colors.blue
                              ),
                             ),
                           ),
                        ],
                      )
                    ],
                  ),
                ),
                  ],
                ),
              ],
            )
          ),
        );
  }
}
