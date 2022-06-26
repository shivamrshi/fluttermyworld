

import 'dart:ui';

import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../utils/routes.dart';

class aktu extends StatefulWidget {
  const aktu({Key? key}) : super(key: key);

  @override
  State<aktu> createState() => _aktuState();
}

class _aktuState extends State<aktu> with TickerProviderStateMixin {
  var images ={
    "Lemon_Tea.png":"Lemon Tea",
    "Black_Tea.png":"Black Tea",
    "Green_Tea.png":"Green Tea",
  };
  @override
  Widget build(BuildContext context) {
   TabController _tabController = TabController(length:3,vsync: this);
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
       body:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.center,
            height:56,
            width:350,
            margin:const EdgeInsets.only(left:20,top:10 ,right: 20),
            padding: EdgeInsets.only(left:24),
       decoration: BoxDecoration(color:Color.fromARGB(99, 70, 77, 67),
       borderRadius: BorderRadius.circular(20),
      /* boxShadow: [BoxShadow(
        offset: Offset(0, 10),
        blurRadius: 50,
        color:Colors.black.withOpacity(0.23),
       ),],*/

       ),
       
       child: TextField(
        decoration:InputDecoration(
          hintText: "Search",hintStyle: TextStyle(color:Colors.black54
          ),
          enabledBorder:InputBorder.none,
            focusedBorder:InputBorder.none,    
        ),
       ),
      
          ),
          
          
          
      SizedBox(height: 12,),
      //tabbar
      Container(
        child: Align(
          alignment:Alignment.centerLeft,
          child: TabBar(
            labelPadding: const EdgeInsets.only(left:20,right:15),
            controller:_tabController,
            unselectedLabelColor:Colors.grey,
            labelColor:Color.fromARGB(187, 13, 77, 5) ,
            labelStyle:TextStyle(fontSize: 17,fontWeight: FontWeight.w500),
            isScrollable: true,
            indicatorSize: TabBarIndicatorSize.label,
            indicator:CircleTabIndicator(color:Color.fromARGB(187, 13, 77, 5),radius: 5),
            tabs: [
            Tab(text:"Recommendation"),
            Tab(text:"Black Tea"),
             
            Tab(text:"Green Tea"),
            
           
        
          ],
          ),
        ),
      ),
      SizedBox( height: 10,  ),
         Container(
          padding:const EdgeInsets.only(left:15),
          height: 220,
          width:double.maxFinite ,
          child: TabBarView(
            controller:_tabController,
            children: [
                 
                  
                   Container(
                    height: 110,
                    width: double.maxFinite,
                    margin: const EdgeInsets.only(left:8),
                    child: ListView.builder(
                        itemCount: 3,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (_, index) {
                          return InkWell(
                            onTap: () {
                          Navigator.pushNamed(context, MyRoutes.detailRoute) ;
                        },
                            child: Container(
                            
                              margin: const EdgeInsets.only(right: 25),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // margin:const EdgeInsets.only(right:50),
                                    height: 180,
                                    width: 130,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Color.fromARGB(255, 190, 255, 130),
                                        image: DecorationImage(
                                            image: AssetImage("img/" +
                                                images.keys.elementAt(index)),
                                           // fit: BoxFit.cover
                                            )),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                      child: Text(
                                    images.values.elementAt(index),
                                    style:TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color:Color.fromARGB(187, 13, 77, 5) ),
                                  ))
                                ],
                              ),
                            ),
                          );
                        })),
                 
                   /* ListView.builder(
                      
                      itemCount:1,
                      scrollDirection:Axis.horizontal,
                      itemBuilder: (BuildContext context,int index)  {
                      return  InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, MyRoutes.detailRoute) ;
                        },
                        child: Row(children: [
                          Container(
                          margin:const EdgeInsets.only(right:15,top:10),
                         // height:150,
                          width: 130,
                          
                          decoration: BoxDecoration(
                            borderRadius:BorderRadius.circular(20),
                            color: Color.fromARGB(255, 190, 255, 130),
                            image:DecorationImage(
                              image:AssetImage("assets/images/lemon.png"),
                              
                             // fit: BoxFit.cover
                            )
                          ),
                        ),
                         Container(
                          margin:const EdgeInsets.only(right:15,top:10),
                         // height:150,
                          width: 130,
                          
                          decoration: BoxDecoration(
                            borderRadius:BorderRadius.circular(20),
                            color: Color.fromARGB(255, 190, 255, 130),
                          /*  image:DecorationImage(
                              image:AssetImage("assets/images/R.jpg"),
                              fit: BoxFit.cover
                            )*/
                          ),
                        ),
                         Container(
                          margin:const EdgeInsets.only(right:15,top:10),
                         // height:150,
                          width: 130,
                          
                          decoration: BoxDecoration(
                            borderRadius:BorderRadius.circular(20),
                            color: Color.fromARGB(255, 190, 255, 130),
                          /*  image:DecorationImage(
                              image:AssetImage("assets/images/R.jpg"),
                              fit: BoxFit.cover
                            )*/
                          ),
                        ),
                        ],)
                      );
                      }
                                         ),*/
                   Container(
                    height: 110,
                    width: double.maxFinite,
                    margin: const EdgeInsets.only(left:8),
                    child: ListView.builder(
                        itemCount: 3,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (_, index) {
                          return InkWell(
                            onTap: () {
                          Navigator.pushNamed(context, MyRoutes.detailRoute) ;
                        },
                            child: Container(
                            
                              margin: const EdgeInsets.only(right: 25),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // margin:const EdgeInsets.only(right:50),
                                    height: 180,
                                    width: 130,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Color.fromARGB(255, 190, 255, 130),
                                        image: DecorationImage(
                                            image: AssetImage("img/" +
                                                images.keys.elementAt(index)),
                                           // fit: BoxFit.cover
                                            )),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                      child: Text(
                                    images.values.elementAt(index),
                                    style:TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color:Color.fromARGB(187, 13, 77, 5) ),
                                  ))
                                ],
                              ),
                            ),
                          );
                        })),    
                    Container(
                    height: 110,
                    width: double.maxFinite,
                    margin: const EdgeInsets.only(left:8),
                    child: ListView.builder(
                        itemCount: 3,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (_, index) {
                          return InkWell(
                            onTap: () {
                          Navigator.pushNamed(context, MyRoutes.detailRoute) ;
                        },
                            child: Container(
                            
                              margin: const EdgeInsets.only(right: 25),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // margin:const EdgeInsets.only(right:50),
                                    height: 180,
                                    width: 130,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Color.fromARGB(255, 190, 255, 130),
                                        image: DecorationImage(
                                            image: AssetImage("img/" +
                                                images.keys.elementAt(index)),
                                           // fit: BoxFit.cover
                                            )),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                      child: Text(
                                    images.values.elementAt(index),
                                    style:TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color:Color.fromARGB(187, 13, 77, 5) ),
                                  ))
                                ],
                              ),
                            ),
                          );
                        })),    
               
         
            ]
            ),
         ),
         SizedBox(height:20),
       
         Padding(
           padding: const EdgeInsets.only(left: 21),
           child: Text("Will Buy-->", 
           style:TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color:Color.fromARGB(238, 84, 89, 83) )),
         ),
           SizedBox(height:20), 
        Column(
          children: [
            Row(
              children: [
               
                    SizedBox(width:21),   // padding: const EdgeInsets.all(20.0),
                   Container(
                     height:75,
                     width:75,
                      decoration: BoxDecoration(
                                borderRadius:BorderRadius.circular(15),
                                color: Color.fromARGB(255, 190, 255, 130),),
                    child: Container(
                      margin: EdgeInsets.all(11),
                      height:45,
                      width:45,
                      
                      decoration: BoxDecoration(
                                borderRadius:BorderRadius.circular(15),
                                color: Colors.white,
                              image:DecorationImage(
                                  image:AssetImage("assets/images/bubble2.png"),
                                 
                                )
                              ),
                  
                    ),
                  ),
                
                SizedBox(width:10),
              
         
            
              Column(  children: [ 
                Text("Buuble Tea",
             style:TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color:Color.fromARGB(193, 13, 77, 5) , )
             ),
             SizedBox(height:13),
              Text("Good day time",
             style:TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color:Color.fromARGB(137, 84, 89, 83) )
             ),
             ],
              ),
            SizedBox(width:30),
             Column(  children: [ 
                Text("₹",//textAlign: TextAlign.start,
             style:TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color:Color.fromARGB(137, 84, 89, 83), )
             ),
            // SizedBox(height:13),
              Text("        55.99",//textAlign: TextAlign.end,
             style:TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color:Color.fromARGB(193, 13, 77, 5) )
             ),
             ],
              ),
         
              ],

            )
          ],
        ),
         SizedBox(height:20), 
        Column(
          children: [
            Row(
              children: [
                 SizedBox(width:21), 
                   Container(
                     height:75,
                     width:75,
                      decoration: BoxDecoration(
                                borderRadius:BorderRadius.circular(15),
                                color: Color.fromARGB(255, 190, 255, 130),),
                    child: Container(
                      margin: EdgeInsets.all(11),
                      height:45,
                      width:45,
                      
                      decoration: BoxDecoration(
                                borderRadius:BorderRadius.circular(15),
                                color: Colors.white,
                              image:DecorationImage(
                                  image:AssetImage("assets/images/purple.png"),
                                 
                                )
                              ),
                  
                    ),
                  ),
                
              
              
           SizedBox(width:10),
            
              Column(  children: [ 
                Text("Purple Tea",
             style:TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color:Color.fromARGB(193, 13, 77, 5) , )
             ),
             SizedBox(height:13),
              Text("Good day time",
             style:TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color:Color.fromARGB(137, 84, 89, 83) )
             ),
             ],
              ),
            SizedBox(width:30),
             Column(  children: [ 
                Text("₹",//textAlign: TextAlign.start,
             style:TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color:Color.fromARGB(137, 84, 89, 83), )
             ),
            // SizedBox(height:13),
              Text("        25.99",//textAlign: TextAlign.end,
             style:TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color:Color.fromARGB(193, 13, 77, 5) )
             ),
             ],
              ),
         
              ],
            )
          ],
        )
        ],
       )
    );
  }
}


 class CircleTabIndicator extends Decoration{
  final Color color;
  double radius;
  CircleTabIndicator({required this.color,required this .radius});
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    
     return _circlepainter(color:color, radius:radius);
  }
  
}

class _circlepainter extends BoxPainter{
  final Color color;
  double radius;
 _circlepainter({required this.color,required this .radius});
  @override
  void paint(Canvas canvas, Offset offset,
   ImageConfiguration configuration) {
    Paint _paint= Paint();
    _paint.color=color;
     _paint.isAntiAlias=true;
     final Offset circleOffset=Offset(configuration.size!.width/2-radius/2,configuration.size!.height-radius);

   canvas.drawCircle(offset+circleOffset ,radius, _paint);
  }
  
}




class dddd extends StatelessWidget {
  const dddd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(CupertinoIcons.line_horizontal_3_decrease);
  }
}
