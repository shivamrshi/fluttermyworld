import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/routes.dart';

class material extends StatefulWidget {
  const material({Key? key}) : super(key: key);

  @override
  State<material> createState() => _materialState();
}

class _materialState extends State<material> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, MyRoutes.mydrawerRoute);
            },

            icon: dddd(),
            //icon: SvgPicture.asset("assets\icons\mu.svg",color: Colors.black12),
          ),

          /* backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color:Colors.black),*/
          title: Text(
            "Hi! John!",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
            //style:TextStyle(color:Colors.black),
          ),
        ),
        body:ListView(
          children: [
            SizedBox(height:10),
           Padding(
             padding: const EdgeInsets.only(left:21),
             child: Text("Shopping Cart", style:TextStyle(fontSize: 28,fontWeight: FontWeight.bold,
             color:Color.fromARGB(200, 84, 89, 83),),
             )
           ),
            SizedBox(height:10),
           Padding(
             padding: const EdgeInsets.only(left:21),
             child: Text("3 items in cart", style:TextStyle(fontSize:16,fontWeight: FontWeight.bold,
               color:Color.fromARGB(137, 84, 89, 83),),
               ),
           ),
           
           SizedBox(height:21),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 21),
                  child: Container(
                           height:80,
                           width:80,
                            decoration: BoxDecoration(
                                      borderRadius:BorderRadius.circular(15),
                                      color: Color.fromARGB(255, 190, 255, 130),),
                          child: Container(
                            margin: EdgeInsets.all(8),
                            height:50,
                            width:50,
                            
                            decoration: BoxDecoration(
                                      borderRadius:BorderRadius.circular(15),
                                      color: Colors.white,
                                    image:DecorationImage(
                                        image:AssetImage("assets/images/bubble.png"),
                                       
                                      )
                                    ),
                        
                          ),
                        ),
                ),
                SizedBox(width:10),
                Column(  children: [ 
                  SizedBox(height:5),
                Text("Buuble Tea",
             style:TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color:Color.fromARGB(255, 84, 89, 83) , )
             ),
             SizedBox(height:5),
              Row(
                children: [
                  Text("₹",//textAlign: TextAlign.start,
             style:TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color:Color.fromARGB(137, 84, 89, 83), )
             ),  
            
               Padding(
                 padding: const EdgeInsets.only(top:13),
                 child: Text("55.99",//textAlign: TextAlign.end,
             style:TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color:Color.fromARGB(193, 13, 77, 5) )
             ),
               ),
                ],
              ), 
             ],
              ),
              SizedBox(width:60),
              Row(children: [
                 Text("-",//textAlign: TextAlign.start,
             style:TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color:Color.fromARGB(137, 84, 89, 83), )
             ),  
              SizedBox(width:20),
              Text("1",//textAlign: TextAlign.start,
             style:TextStyle(fontSize: 33,fontWeight: FontWeight.bold,color:Color.fromARGB(230, 84, 89, 83), )
             ),  
              SizedBox(width:20),
              Text("+",//textAlign: TextAlign.start,
             style:TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color:Color.fromARGB(137, 84, 89, 83), )
             ),  
              ],)

              ], ),
            
           SizedBox(height:25),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 21),
                  child: Container(
                           height:80,
                           width:80,
                            decoration: BoxDecoration(
                                      borderRadius:BorderRadius.circular(15),
                                      color: Color.fromARGB(255, 190, 255, 130),),
                          child: Container(
                            margin: EdgeInsets.all(8),
                            height:50,
                            width:50,
                            
                            decoration: BoxDecoration(
                                      borderRadius:BorderRadius.circular(15),
                                      color: Colors.white,
                                    image:DecorationImage(
                                        image:AssetImage("assets/images/purple.png"),
                                       
                                      )
                                    ),
                        
                          ),
                        ),
                ),
                SizedBox(width:10),
                Column(  children: [ 
                  SizedBox(height:5),
                Text("Purple Tea",
             style:TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color:Color.fromARGB(255, 84, 89, 83) , )
             ),
             SizedBox(height:5),
              Row(
                children: [
                  Text("₹",//textAlign: TextAlign.start,
             style:TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color:Color.fromARGB(137, 84, 89, 83), )
             ),  
            
               Padding(
                 padding: const EdgeInsets.only(top:13),
                 child: Text("25.99",//textAlign: TextAlign.end,
             style:TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color:Color.fromARGB(193, 13, 77, 5) )
             ),
               ),
                ],
              ), 
             ],
              ),
              SizedBox(width:60),
              Row(children: [
                 Text("-",//textAlign: TextAlign.start,
             style:TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color:Color.fromARGB(137, 84, 89, 83), )
             ),  
              SizedBox(width:20),
              Text("1",//textAlign: TextAlign.start,
             style:TextStyle(fontSize: 33,fontWeight: FontWeight.bold,color:Color.fromARGB(230, 84, 89, 83), )
             ),  
              SizedBox(width:20),
              Text("+",//textAlign: TextAlign.start,
             style:TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color:Color.fromARGB(137, 84, 89, 83), )
             ),  
              ],)

              ], ),
               SizedBox(height:25),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 21),
                  child: Container(
                           height:80,
                           width:80,
                            decoration: BoxDecoration(
                                      borderRadius:BorderRadius.circular(15),
                                      color: Color.fromARGB(255, 190, 255, 130),),
                          child: Container(
                            margin: EdgeInsets.all(8),
                            height:50,
                            width:50,
                            
                            decoration: BoxDecoration(
                                      borderRadius:BorderRadius.circular(15),
                                      color: Colors.white,
                                    image:DecorationImage(
                                        image:AssetImage("assets/images/Lemon_Tea.png"),
                                       
                                      )
                                    ),
                        
                          ),
                        ),
                ),
                SizedBox(width:10),
                Column(  children: [ 
                  SizedBox(height:5),
                Text("Lemon Tea",
             style:TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color:Color.fromARGB(255, 84, 89, 83) , )
             ),
             SizedBox(height:5),
              Row(
                children: [
                  Text("₹",//textAlign: TextAlign.start,
             style:TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color:Color.fromARGB(137, 84, 89, 83), )
             ),  
            
               Padding(
                 padding: const EdgeInsets.only(top:13),
                 child: Text("12.99",//textAlign: TextAlign.end,
             style:TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color:Color.fromARGB(193, 13, 77, 5) )
             ),
               ),
                ],
              ), 
             ],
              ),
              SizedBox(width:60),
              Row(children: [
                 Text("-",//textAlign: TextAlign.start,
             style:TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color:Color.fromARGB(137, 84, 89, 83), )
             ),  
              SizedBox(width:20),
              Text("1",//textAlign: TextAlign.start,
             style:TextStyle(fontSize: 33,fontWeight: FontWeight.bold,color:Color.fromARGB(230, 84, 89, 83), )
             ),  
              SizedBox(width:20),
              Text("+",//textAlign: TextAlign.start,
             style:TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color:Color.fromARGB(137, 84, 89, 83), )
             ),  
              ],)

              ], ),
              Padding(
                padding: const EdgeInsets.only(left: 21,right: 21,bottom: 2,top:190),
                child: Container(
                  
                 height:56,
                 width: 350,
                 decoration:BoxDecoration(color:Color.fromARGB(255, 142, 251, 40),
                 borderRadius:BorderRadius.circular(28),
                 
                 
                 ),
                child: Row(children: [
                  Padding(
                    padding: const EdgeInsets.only(left:23),
                    child: Text("Total",
                    style:TextStyle(color:Colors.white,
                    fontWeight: FontWeight.bold
                    )
                    
                    ),
                  ),
                 SizedBox(width:30),
                 
                    Text("₹",//textAlign: MainAxisAlignment.center,
             style:TextStyle(fontSize: 19,fontWeight: FontWeight.bold,color:Colors.white, )
             ),

                Text("95.97",//textAlign: MainAxisAlignment.center,
             style:TextStyle(fontSize:30,fontWeight: FontWeight.bold,color:Colors.white, )
             ),      
                  SizedBox(width:60),
                      Text("Next",//textAlign: MainAxisAlignment.center,
             style:TextStyle(fontSize:25,fontWeight: FontWeight.bold,color:Colors.white, )
             ), 
              SizedBox(width:12) ,
              IconButton(onPressed:() {}, icon: Icon(Icons.arrow_forward_ios,color: Colors.white,))

                ]),

                ),
              )

          ],    
      ),
     


    );
  }
}


class dddd extends StatelessWidget {
  const dddd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(CupertinoIcons.line_horizontal_3_decrease);
  }
}
