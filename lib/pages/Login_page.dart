

import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";

import '../utils/routes.dart';
class LoginPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
  
    return Material(
      color: Colors.white,
      child:SingleChildScrollView(
      child:Column(
      children:[
        Image.asset("assets/images/login_image.png",
        fit:BoxFit.cover,
        height: 300,
            ),
       SizedBox( 
         height:57,
       ) ,    
        Text(
     "welcome",
     style: TextStyle(
fontSize: 29,
fontWeight: FontWeight.bold,
     ), 
     ),
      SizedBox( 
         height:57,
       ) ,
       Padding(
         padding: const EdgeInsets.symmetric( vertical:16,horizontal:32),
         child:Column(
         children: [
            TextFormField(
         decoration:InputDecoration(
           hintText:"Enter username",
           labelText: "username",
          ),
       ),
       TextFormField(
         obscureText: true,
         decoration:InputDecoration(
           hintText:"Enter passward",
           labelText: "passward",
          ),
       ),
        SizedBox( 
         height:40,
       ),
       ElevatedButton(
         child: Text("login"),
         style:TextButton.styleFrom(minimumSize: Size(140, 40)),
         onPressed: ( ) {
        Navigator.pushNamed(context, MyRoutes.homeRoute) ;  
           },
           
           )
           ],
          ),
        ),
        ],
       ) 
     ),
    );
  }
}