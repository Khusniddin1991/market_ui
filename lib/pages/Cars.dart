import 'package:flutter/material.dart';



class Cars extends StatefulWidget {
  static const String id='cars_page';
  @override
  _CarsState createState() => _CarsState();
}

class _CarsState extends State<Cars> {

  List <String > _listing=[
    'asset/images/image1.jpg',
    'asset/images/image2.jpg',
    'asset/images/image3.jpg',
    'asset/images/image4.jpg',
    'asset/images/image5.jpg',
    'asset/images/image6.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child:ListView.builder(itemCount:_listing.length,shrinkWrap: true,physics: NeverScrollableScrollPhysics(),itemBuilder:(ctx,index)=>
          Container(

            margin: EdgeInsets.all(10),
            height: 250,
            width:250 ,
            decoration: BoxDecoration(
              image:DecorationImage(
                  image: AssetImage(_listing[index],),

                fit: BoxFit.fill
              ),
              borderRadius: BorderRadius.circular(25),
              boxShadow: [
                BoxShadow(
                  color:Colors.grey[400],
                  blurRadius: 10,
                  offset:Offset(0,10)
                )
              ]
            ),
            child: Container(
              padding: EdgeInsets.only(top: 20,left: 20),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.bottomRight,

                      colors: [
                        Colors.black87.withOpacity(0.8),
                        Colors.black87.withOpacity(0.6),
                        Colors.black87.withOpacity(0.3),
                        Colors.black87.withOpacity(0.1)
                      ]

                  )
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(children: [
                    Text('PDP Car',style: TextStyle(color: Colors.white,fontSize: 18),),
                    SizedBox(width: 5,),
                    Text('Electric',style: TextStyle(color: Colors.red,fontSize: 18))
                  ],),
                  SizedBox(height: 150,),
                  Container(
                    padding: EdgeInsets.only(right: 40),
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle
                    ),
                    child:IconButton(icon: Icon(Icons.favorite_border,color: Colors.white,), onPressed: (){}),
                  )



                ],
              ),
            ),

          )
      ),
    );
  }
}
