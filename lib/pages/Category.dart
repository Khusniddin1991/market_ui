import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Category extends StatefulWidget {










  static final id='Category';
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  int select=0;
 bool h=false;

  List<String> _lists=[
    'all','blue','yellow','green','red','brown'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView.builder(scrollDirection:Axis.horizontal,itemCount:_lists.length,itemBuilder:(context,index){
        var item=_lists[index];
        return GestureDetector(
          onTap: (){
            setState(() {
              select=index;

            });
          },
          child: AspectRatio(aspectRatio: 2/1,
            child: Container(
              decoration: BoxDecoration(
                  color:index==select? Colors.red:Colors.white,
                  borderRadius: BorderRadius.circular(20)
              ),child: Center(
              child:Text(item,style: TextStyle(color:index==select?Colors.deepPurple:Colors.black87,fontSize:index==select?17:14 ),),
            ),

            ),

          ),
        );
      }),
    );
  }
}
