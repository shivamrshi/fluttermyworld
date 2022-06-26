
import 'dart:ui';
import '../utils/routes.dart';
import 'package:flutter/material.dart';

class detail extends StatefulWidget {
  detail({Key? key}) : super(key: key);

  @override
  State<detail> createState() => _detailState();
}

class _detailState extends State<detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
                left: 0,
                right: 0,
                child: Container(
                    width: double.maxFinite,
                    height: 400,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 190, 255, 130),
                      /* image:DecorationImage(
                  image: AssetImage("assets/images/R.jpg"),
                  fit: BoxFit.cover,
                  ),*/
                    ))),
            Positioned(
                left: 17,
                top: 40,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () { Navigator.pushNamed(context, MyRoutes.mainpageRoute);},
                      icon: Icon(Icons.arrow_back_ios_new),
                      color: Colors.white,
                    ),
                  ],
                )),
            Positioned(
                left: 25,
                top: 160,
                child: Column(
                  children: [
                    Text(
                      "Lemon Tea",
                      style: TextStyle(
                        color: Color.fromARGB(201, 39, 97, 22),
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    )
                  ],
                )),
            Positioned(
                left: 25,
                top: 193,
                child: Column(
                  children: [
                    Text(
                      "Good day time",
                      style: TextStyle(
                        color: Color.fromARGB(193, 158, 158, 158),
                        fontSize: 14,
                      ),
                    )
                  ],
                )),
            Positioned(
                left: 38,
                top: 230,
                child: Column(
                  children: [
                    Text(
                      "₹",
                      style: TextStyle(
                        color: Color.fromARGB(193, 158, 158, 158),
                        fontSize: 23,
                      ),
                    )
                  ],
                )),
            Positioned(
                left: 50,
                top: 250,
                child: Column(
                  children: [
                    Text(
                      "12.99",
                      style: TextStyle(
                        color: Color.fromARGB(201, 39, 97, 22),
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                )),
            Positioned(
                top: 315,
                child: Container(
                  padding:const EdgeInsets.only (left:20,right:20,top:25),
                    width: MediaQuery.of(context).size.width,
                    height: 490,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(60),
                      ),
                    ),
                    child:Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children:[
                    
                        Text("  Particulars",style: TextStyle(
                          color:Colors.black54,
                        fontWeight: FontWeight.bold,
                        fontSize: 26,
                        ),)
                       ]
                      ),
                  SizedBox(height:20),
                  Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.",
                    style:TextStyle(color: Colors.black54),),
                     SizedBox(height:20),
                  
                Wrap(
                     children:List.generate(5, (index){
                   return Icon(Icons.star,color:Colors.green);
                  })
                   ),
                   SizedBox(height:10),
                   Row(children: [
                    Container( margin: EdgeInsets.only(left:4,right:20),
                        width:60,
                        height:60,
                        child: Center(child: Text("500 ml",style:TextStyle(fontWeight: FontWeight.bold,color:Color.fromARGB(255, 104, 95, 95)))),
                        decoration:BoxDecoration(
                          borderRadius:BorderRadius.circular(10),
                          color:Color.fromARGB(255, 190, 255, 130),
                         )
                    ),
                    SizedBox(width:15),
                    Container( margin: EdgeInsets.only(left:4,right:20),
                        width:60,
                        height:60,
                        child: Center(child: Text("Less Ice",style:TextStyle(fontWeight: FontWeight.bold,color:Color.fromARGB(255, 104, 95, 95)))),
                        decoration:BoxDecoration(
                          borderRadius:BorderRadius.circular(10),
                          color:Color.fromARGB(255, 190, 255, 130),
                         )
                    ),
                     SizedBox(width:15),
                    Container( margin: EdgeInsets.only(left:4,right:20),
                        width:60,
                        height:60,
                        child: Center(child: Text("Sugar",style:TextStyle(fontWeight: FontWeight.bold,color:Color.fromARGB(255, 104, 95, 95)))),
                        decoration:BoxDecoration(
                          borderRadius:BorderRadius.circular(10),
                          color:Color.fromARGB(255, 190, 255, 130),
                         )
                    ),
                   
                    


                   ],),
                     SizedBox(height:15),
                   

                    Text("Services",
                     style: TextStyle(color:Color.fromARGB(191, 0, 0, 0),fontWeight:FontWeight.w600,fontSize: 26),
                     ),
                      SizedBox(height:10),
                     Text("Lorem Ipsum is simply dummy text of the printing.",
           
                     ),
                      SizedBox(height:25),
                     Row(children: [
                       Container( margin: EdgeInsets.only(left:4,right:20),
                  
                      child: Icon(Icons.timelapse_sharp,size:40,color: Colors.grey,),
                       
                    ),
                     SizedBox(width:10),
                      Container( margin: EdgeInsets.only(left:4,right:20),
                  
                      child: Icon(Icons.favorite_border,size:40,color: Colors.grey,),
                       
                    ),
                     SizedBox(width:10),
                      Container( margin: EdgeInsets.only(left:4,right:20),
                        width:180,
                        height:60,
                        child: Center(child: Text("Purchase",style:TextStyle(fontWeight: FontWeight.bold,color:Colors.white,fontSize: 24))),
                        decoration:BoxDecoration(
                          borderRadius:BorderRadius.circular(30),
                          color:Color.fromARGB(255, 142, 251, 40),
                         )
                    ),


                     ],)
    
                    ],)
                    )
                    ),
            Positioned(
                left: 200,
                right: 50,
                top: 130,
                child: Column(children: [
                  Image.asset(
                    "assets/images/Lemon_Tea.png",
                    height: 300,
                  ),
                ])),
          ],
        ),
      ),
    );
  }
}

