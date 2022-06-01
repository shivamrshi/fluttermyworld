

import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";

import '../utils/routes.dart';
class LoginPage extends StatefulWidget {


  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
   String name=" ";
   bool changeButton = false;// false=0, true =1
 

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
           setState(() {
             changeButton= true;
           });

          // await Future.delayed (Duration(seconds: 1));
          // Navigator.pushNamed(context, MyRoutes.homeRoute) ;
         },
       
       child: AnimatedContainer(
         duration: Duration(seconds:1),
         width: changeButton ? 50 :150,
         height: 50,
         
         alignment: Alignment.center,
         child: changeButton ? Icon(Icons.done,
           color:Colors.white,
         ) 
        : Text(
         "Login",
         style: TextStyle(
           color:Colors.white,fontWeight: FontWeight.bold,
           fontSize:18),

        ),
        decoration: BoxDecoration(
          color: Colors.deepPurple,
         // shape: changeButton?BoxShape.circle:BoxShape.rectangle,
          borderRadius: BorderRadius.circular(changeButton ?50:8)
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