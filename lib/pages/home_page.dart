//import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_myapp/pages/share_app.dart';
import 'package:flutter_myapp/utils/homescroll.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../components/image_carousel.dart';
import '../utils/routes.dart';
import '../widgets/drawer.dart';
import 'section_title.dart';


//import '../widgets/drawer.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // final String days =41;
var images={
"ob0.png":"ob0",
"ob1.png":"ob1",
"ob2.png":"ob2",
"ob11.png":"ob11",
};
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
            "Hello! Gyus",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
            //style:TextStyle(color:Colors.black),
          ),
        ),
        body: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              sliver: SliverToBoxAdapter(child: imagecarosel()
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.only(left: 13,top: 10),
              sliver: SliverToBoxAdapter(
                child: sectiontitle(
                  title:"Top",
                  press:(){},
                ),
              ),
            ),
         SliverToBoxAdapter(
           child: Container(
              height:110,
              width:double.maxFinite,
              margin: const EdgeInsets.only(left:20),
              child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder:(_,index){
                return Container(
                  margin: const EdgeInsets.only(right:25),
                  child: Column(
                    crossAxisAlignment:CrossAxisAlignment.center,
                    children: [
                         Container(
                           // margin:const EdgeInsets.only(right:50),
                            height:80,
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius:BorderRadius.circular(20),
                              color: Colors.white,
                              image:DecorationImage(
                                image:AssetImage("img/"+images.keys.elementAt(index)),
                                fit: BoxFit.cover
                              )
                            ),
                          ),
                          SizedBox(height: 8,),
                          Container(
                            child:Text(images.values.elementAt(index),
                            )
                          )
                  ],
                  ),
                );
              }
              )
            ),
         )
          ],
        )
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
