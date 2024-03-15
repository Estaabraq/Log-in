// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'login.dart';

class Signup extends StatefulWidget {
  @override
  _signState createState() => _signState();
}

class _signState extends State<Signup> {
  final formkey = GlobalKey<FormState>();

  // const Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: SizedBox(
              // height: double.infinity,
              // width: double.infinity,
              child: Stack(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Form(
                      key: formkey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Log in",
                            style: TextStyle(
                                fontSize: 35,
                                fontFamily: "myfont",
                                color: Colors.grey[800]),
                          ),
                          SizedBox(
                            height: 21,
                          ),
                          SizedBox(
                            height: 140,
                            child: Icon(
                              Icons.person,
                              color: Colors.orange,
                              size: 90,
                            ),
                          ),
                          SizedBox(
                            height: 27,
                          ),
                          // Container(
                          //     decoration: BoxDecoration(
                          //       color: Color.fromRGBO(205, 240, 255, .4),
                          //       borderRadius: BorderRadius.circular(66),
                          //     ),
                          //     width: 266,
                          //     padding: EdgeInsets.symmetric(horizontal: 16),
                          //     child: TextFormField(
                          //         validator: (email) {
                          //           if (email == null) return null;
                          //           if (!RegExp(
                          //                   r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
                          //               .hasMatch(email)) {
                          //             return 'email is unvailed';
                          //           }
                          //           return null;
                          //         },
                          //         decoration: InputDecoration(
                          //             icon: Icon(Icons.person,
                          //                 color: Colors.orange),
                          //             hintText: "Your Email :",
                          //             border: InputBorder.none))),
                          SizedBox(
                            height: 23,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(205, 240, 255, .4),
                              borderRadius: BorderRadius.circular(66),
                            ),
                            width: 266,
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: TextFormField(
                              validator: (fname) {
                                if (fname == null) return null;
                                if (fname.isEmpty) {
                                  return 'name is requierd';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                  icon: Icon(
                                    Icons.account_circle,
                                    color: Colors.orange,
                                  ),
                                  hintText: "Username :",
                                  border: InputBorder.none),
                            ),
                          ),
                          SizedBox(
                            height: 23,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(205, 240, 255, .4),
                              borderRadius: BorderRadius.circular(66),
                            ),
                            width: 266,
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: TextFormField(
                              validator: (pass) {
                                // RegExp regExp = RegExp(
                                //     r'^(?=.?[A-Z])(?=.?[a-z])(?=.?[0-9])(?=.?[!@#\$&*~]).{8,}$');
                                if (pass == null) return null;
                                // bool _passstatu = validatepassword(pass);
                                if (pass.length < 8) {
                                  return 'at least 8 character long. ';
                                }
                                return null;
                              },
                              obscureText: true,
                              decoration: InputDecoration(
                                  suffix: Icon(Icons.visibility,
                                      color: Colors.orange),
                                  icon: Icon(
                                    Icons.lock,
                                    color: Colors.orange,
                                    size: 19,
                                  ),
                                  hintText: "Password :",
                                  border: InputBorder.none),
                            ),
                          ),
                          SizedBox(
                            height: 17,
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.orange),
                              padding: MaterialStateProperty.all(
                                  EdgeInsets.symmetric(
                                      horizontal: 89, vertical: 10)),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(27))),
                            ),
                            child: Text(
                              "Log in",
                              style: TextStyle(fontSize: 24),
                            ),
                          ),
                          SizedBox(
                            height: 33,
                          ),
                          // Row(
                          //   mainAxisAlignment: MainAxisAlignment.center,
                          //   children: [
                          //     Text("Already have an accout? "),
                          //     GestureDetector(
                          //       child: Text(
                          //         " Log in",
                          //         style: TextStyle(fontWeight: FontWeight.bold),
                          //       ),
                          //     ),
                          //   ],
                          // ),
                          SizedBox(
                            height: 17,
                          ),
                          SizedBox(
                            width: 299,
                            child: Row(
                              children: [
                                Expanded(
                                    child: Divider(
                                  thickness: 0.6,
                                  color: Color.fromRGBO(15, 9, 102, 1),
                                )),
                                Text(
                                  "OR",
                                  style: TextStyle(
                                    color: Color.fromRGBO(15, 9, 102, 1),
                                  ),
                                ),
                                Expanded(
                                    child: Divider(
                                  thickness: 0.6,
                                  color: Color.fromRGBO(15, 9, 102, 1),
                                )),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 27),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    padding: EdgeInsets.all(1),
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            color:
                                                Color.fromRGBO(15, 9, 102, 1),
                                            width: 1)),
                                  ),
                                ),
                                SizedBox(
                                  width: 22,
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                      padding: EdgeInsets.all(1),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                              color:
                                                  Color.fromRGBO(15, 9, 102, 1),
                                              width: 1)),
                                      child: Icon(
                                        Icons.facebook,
                                        color: Color.fromARGB(255, 0, 63, 114),
                                        size: 30,
                                      )),
                                ),
                                SizedBox(
                                  width: 22,
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    padding: EdgeInsets.all(1),
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            color:
                                                Color.fromRGBO(15, 9, 102, 1),
                                            width: 1)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Positioned(
                  //   left: 0,
                  //   child: Image.asset(
                  //     "assets/images/main_top.png",
                  //     width: 111,
                  //   ),
                  // ),
                  // Positioned(
                  //   bottom: 0,
                  //   right: 0,
                  //   child: Image.asset(
                  //     "assets/images/login_bottom.png",
                  //     width: 111,
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ),
      )),
    );
  }
}
