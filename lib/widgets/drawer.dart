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
            UserAccountsDrawerHeader(
                  
               margin: EdgeInsets.zero,
             
               
               accountName:Text("John Tim"),
               decoration:BoxDecoration(
                 color: Color.fromARGB(255, 190, 255, 130),
                 borderRadius: BorderRadius.circular(40),
                
               
               ),
               
               accountEmail: Text("r.kstarpoint@gmail.com"),
             currentAccountPicture:CircleAvatar(
               backgroundImage: NetworkImage(imageUrl),
               ) ,

               
          
             ),
             //)
      
          
         
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

