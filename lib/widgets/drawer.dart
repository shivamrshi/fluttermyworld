
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_myapp/pages/shop.dart';
import 'package:flutter_myapp/widgets/drawer.dart';

import '../pages/home.dart';
import '../utils/routes.dart';
class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageUrl =
    "https://cdn4.iconfinder.com/data/icons/education-and-learning-25/256/Smart_learning-512.png";
    return Drawer(
     
      child: ListView( 
        padding: EdgeInsets.zero,
        
         children:[
           SingleChildScrollView(
             child: Container(
              margin: EdgeInsets.all(0),
              height:300,
              width:double.maxFinite,
              decoration: BoxDecoration(color:Color.fromARGB(255, 190, 255, 130),
              borderRadius: BorderRadius.circular(30)),
              child:Row(children: [
                Padding(
                  padding: const EdgeInsets.only(left:26,),
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/users.png"),radius: 80,
                  ),
                ),
                SizedBox(width:10),
                Padding(
                  padding: const EdgeInsets.only(top:150),
                  child: Column(
                    children: [
                      Text("John Tim", style:TextStyle(fontSize:30,fontWeight: FontWeight.bold,color:Color.fromARGB(244, 50, 48, 48),)
                      ),
                       Text("Edit Profile",textAlign: TextAlign.start, style:TextStyle(fontSize:16,fontWeight: FontWeight.bold,color:Color.fromARGB(244, 50, 48, 48),)
                      ),
                    ],
                  ),
                ),
                 SizedBox(width:10),
                 Padding(
                   padding: const EdgeInsets.only(top:50),
                   child: Column(
                     children: [
                       IconButton(onPressed: (){Navigator.pushNamed(context, MyRoutes.mainpageRoute);},  icon: Icon(Icons.arrow_back_ios,color: Color.fromARGB(255, 35, 33, 33),)),
                     ],
                   ),
                 )

              ],)
             ),
           ),
      
          
         
           ListTile(
    
             title:Text(    
               "Categories",
               textScaleFactor: 1.3,
          style: TextStyle(
            color:Colors.black,fontWeight: FontWeight.w500,
          ),  
             ),
              onTap: ( ) {
                 
             },
           ),
            ListTile(
             
             title:Text(    
               "Your Order",
               textScaleFactor: 1.3,
          style: TextStyle(
            color:Colors.black,fontWeight: FontWeight.w500,//fontStyle:FontStyle.italic,
          ),  
          
             ),
              onTap: ( ) {
           
             },
             
           ),
            ListTile(
            
             title:Text(    
               "Wishlist",
               textScaleFactor: 1.3,
          style: TextStyle(
            color:Colors.black,fontWeight: FontWeight.w500,
          ),  
             ),
              onTap: ( ) {
           
             },
           ),

           ListTile(
           
             title:Text(    
               "FAQs",
               textScaleFactor: 1.3,
          style: TextStyle(
            color:Colors.black,
          ),  
             ),
              onTap: ( ) {
          
             },

           ),
            ListTile(
           
             title:Text(    
               "Log Out",
               textScaleFactor: 1.3,
          style: TextStyle(
            color:Colors.black,fontWeight: FontWeight.w500,
          ),  
             ),
              onTap: ( ) {
         
             },
             
           ),
           
         
         ]
      )
    );
      
    
  }
}

