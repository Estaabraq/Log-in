import 'dart:async';
import 'package:flutter/material.dart';

import 'package:traning/signup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hote World',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Signup(),
      debugShowCheckedModeBanner: false,
    );
  }
}


// import 'package:flutter/material.dart';
// // import 'package:ss/pages/details.dart';
// //
// // import 'home.dart';
// /