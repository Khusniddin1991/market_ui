import 'package:flutter/material.dart';
import 'package:market_ui/pages/Category.dart';

import 'Cars.dart';



class MyHomePage extends StatefulWidget {
  static final id='MyHomePage';
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // upper part
      appBar: AppBar(
        leading: IconButton(icon:Icon(Icons.menu) ,color:Colors.red,onPressed: (){},iconSize: 18,),
        backgroundColor:Colors.transparent,
        title: Text("Cars",style:TextStyle(color: Colors.red,fontSize: 25),),
        elevation: 0,
        actions: [
          IconButton(icon:Icon(Icons.notification_important_sharp,color: Colors.red,), onPressed:(){}),
          IconButton(icon:Icon(Icons.shopping_cart_outlined,color: Colors.red,), onPressed:(){})
        ],
      brightness:Brightness.light ,
      ),
      body:Container(
         height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child:SingleChildScrollView(
          child:Container(
            // height: MediaQuery.of(context).size.height,
            // padding: EdgeInsets.all(10),

            child: Column(

              children: [
                // this is category part
                Container(height: 40,child: Category(),),
                SizedBox(height: 20,),
                // this is body part
                Cars(),

              ],
            ),
          ),
        ),
      ),





    );
  }
}
