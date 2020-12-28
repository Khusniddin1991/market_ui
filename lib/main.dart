import 'package:flutter/material.dart';
import 'package:market_ui/pages/Cars.dart';
import 'package:market_ui/pages/Category.dart';
import 'package:market_ui/pages/Myhome.dart';





main(){

  runApp(MyApp());

}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
      routes:{
        MyHomePage.id:(ctx)=>MyHomePage(),
        Category.id:(ctx)=>Category(),
        Cars.id:(ctx)=>Cars(),
      },
    );
  }
}
