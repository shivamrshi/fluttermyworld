import 'package:flutter/material.dart';

import '../widgets/drawer.dart';

class HomePage extends StatelessWidget {
  final int days =1;
   final String world="gruko";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text("data"),
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