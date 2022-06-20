

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
 final _formKey= GlobalKey<FormState>();
   moveToHome(BuildContext context) async {
     if( _formKey.currentState!.validate()){
           setState(() {
             changeButton= true;
           });

           await Future.delayed (Duration(seconds: 0));
           await Navigator.pushNamed(
             context, MyRoutes.mainpageRoute);
           //Navigator.pushNamed(context, MyRoutes.homeRoute) ;
           setState(() {
             changeButton= false;
           });
     }
   }


  @override
  Widget build(BuildContext context) {
  
    return Material(
      color: Colors.white,
      child:SingleChildScrollView(
        child: Form(
       key:_formKey,

      child:Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column( 
        children:[
          Image.asset("assets/images/lop.png",
          fit:BoxFit.cover,
          height: 300,
              ),
         SizedBox( 
           height:25,
         ) ,    
          Text(
     "welcome $name",
     style: TextStyle(
fontSize: 29,
fontWeight: FontWeight.bold,
     ), 
     ),
        SizedBox( 
           height:40,
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
           validator:(value){
             if (value!.isEmpty) {
               return "username name can not be empty";
             }
             return null;
           },


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
             validator:(value){
             if (value!.isEmpty) {
               return "passwrd can not be empty";
             } 
            else if (value.length<6){
            return"passward length should be atleast 6";
            }
             
             
             return null;
           },
         ),
          SizedBox( 
           height:40,
         ),
          Material(
            color:Color.fromARGB(193, 253, 136, 136),
             borderRadius: BorderRadius.circular(changeButton ?50:8),
             child:InkWell(
           onTap: () => moveToHome(context),
           
           
           /* async {
            setState(() {
               changeButton= true;
             });

             await Future.delayed (Duration(seconds: 1));
             await Navigator.pushNamed(
               context, MyRoutes.homeRoute);
             //Navigator.pushNamed(context, MyRoutes.homeRoute) ;
             setState(() {
               changeButton= false;
             });
           },*/
         
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
             color:Colors.black87,fontWeight: FontWeight.bold,
             fontSize:18),

          ),
         /* decoration: BoxDecoration(
            color: Colors.deepPurple,*/
           // shape: changeButton?BoxShape.circle:BoxShape.rectangle,
           
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
         ),
      ) 
        )
     ),
    );
  }
}