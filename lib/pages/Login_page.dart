

import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";

import '../utils/routes.dart';
class LoginPage extends StatefulWidget {


  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
   String name=" ";

 

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
     "welcome $name",
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
          onChanged: (Value)
          {name= Value;
          setState(() {
            
          });
           },
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

       InkWell(
         onTap: () {
           Navigator.pushNamed(context, MyRoutes.homeRoute) ;
         },
       
       child: Container(
         width: 150,
         height: 50,
         
         alignment: Alignment.center,
         child: Text(
         "Login",
         style: TextStyle(
           color:Colors.white,fontWeight: FontWeight.bold,
           fontSize:18),

        ),
        decoration: BoxDecoration(
          color: Colors.deepPurple,
          borderRadius: BorderRadius.circular(10)
        ),
        ),
       ),




     /*  ElevatedButton(
         child: Text("login"),
         style:TextButton.styleFrom(minimumSize: Size(140, 40)),
         onPressed: ( ) {
        Navigator.pushNamed(context, MyRoutes.homeRoute) ;  
           },
           ) */
           ],
          ),
        ),
        ],
       ) 
     ),
    );
  }
}