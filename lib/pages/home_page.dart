import 'package:flutter/material.dart';

import '../widgets/drawer.dart';

class HomePage extends StatelessWidget {
  final int days =1;
   final String world="gruko";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color:Colors.black),
        title:Text("Hello",
        style:TextStyle(color:Colors.black),
        ),
      ),
      body:Center(
         child:Container(
           child: Text(" this is my day $days in this planet $world"),
         ),
       ),
      drawer:MyDrawer(),
    );
  }
}