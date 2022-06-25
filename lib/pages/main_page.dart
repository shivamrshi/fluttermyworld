import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_myapp/pages/shoping_cart.dart';


import 'home.dart';

import 'shop.dart';

class mainpage extends StatefulWidget {
  mainpage({Key? key}) : super(key: key);
  
  @override
  State<mainpage> createState() => _mainpageState();
}

class _mainpageState extends State<mainpage> {
  List Pages=[
    
     aktu(),
    material(),
    previouspaper(),
   

  ];
  int currentIndex=0;
   void onTap(int index) {
   setState(() {
     currentIndex= index;
   });
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:Pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
       
        selectedFontSize: 0,
        unselectedFontSize: 0,
        
        onTap:onTap,
        currentIndex: currentIndex,

        selectedItemColor: Colors.black87,
        unselectedItemColor:Colors.grey.withOpacity(0.7),
        showUnselectedLabels:false,
        showSelectedLabels: false,
        elevation: 0,
        
        items: [
       
        BottomNavigationBarItem(label:("Trending"),icon: Icon( CupertinoIcons.flame_fill)),
        BottomNavigationBarItem(label:("Material"),icon: Icon( CupertinoIcons.square_pencil_fill )),
        BottomNavigationBarItem(label:("Papers"),icon: Icon( CupertinoIcons.book_solid )),
       

        ]
        ),

    );
  }
}