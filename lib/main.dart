import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:transport_ui/myHome.dart';

void main(){
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(MyApp());
} 

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Transport UI',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.pinkAccent,
        fontFamily: 'Poppins',
        textTheme: TextTheme(body1: TextStyle(color:Colors.black87))
      ),
      home: MyHome(),
    );
  }
}