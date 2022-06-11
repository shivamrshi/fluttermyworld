import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_myapp/widgets/drawer.dart';
class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageUrl =
    "https://cdn4.iconfinder.com/data/icons/education-and-learning-25/256/Smart_learning-512.png";
    return Drawer(
      
      child: Container(
        
        decoration: BoxDecoration(
         color:Colors.white,
         borderRadius:BorderRadius.circular(20),
      
          ),
       
        
          child:ListView(
       padding: EdgeInsets.zero,
       children:[
         DrawerHeader(

     
           padding: EdgeInsets.zero,
        //   child:Center(
              child: UserAccountsDrawerHeader(
             margin: EdgeInsets.zero,

             
             accountName:Text("Rahul Kumar"),
             decoration:BoxDecoration(
               color: Colors. cyanAccent     ,borderRadius: BorderRadius.circular(40),
              
             ), 
             accountEmail: Text("r.kstarpoint@gmail.com"),
           currentAccountPicture:CircleAvatar(
             backgroundImage: NetworkImage(imageUrl),
            
             
             
             ) ,
        
           )
           //)
       ),
        
         ListTile(
           leading: Icon(
            CupertinoIcons.home,
            color:Colors.black,
           ),
           title:Text(    
             "Home",
             textScaleFactor: 1.3,
        style: TextStyle(
          color:Colors.black,
        ),  
           ),
         ),
         ListTile(
           leading: Icon(
            CupertinoIcons.flame_fill,
            color:Colors.black,
           ),
           title:Text(    
             "Trending",
             textScaleFactor: 1.3,
        style: TextStyle(
          color:Colors.black,
        ),  
           ),
         ),
          ListTile(
           leading: Icon(
            CupertinoIcons.square_pencil_fill,
            color:Colors.black,
           ),
           title:Text(    
             "Material",
             textScaleFactor: 1.3,
        style: TextStyle(
          color:Colors.black,//fontWeight: FontWeight.bold,fontStyle:FontStyle.italic,
        ),  
           ),
           
         ),
          ListTile(
           leading: Icon(
            CupertinoIcons.book_solid,
            color:Colors.black,
           ),
           title:Text(    
             "Previous Papers",
             textScaleFactor: 1.3,
        style: TextStyle(
          color:Colors.black,
        ),  
           ),
         ),

         ListTile(
           leading: Icon(
            CupertinoIcons.money_dollar_circle,
            color:Colors.black,
           ),
           title:Text(    
             "Scholarship",
             textScaleFactor: 1.3,
        style: TextStyle(
          color:Colors.black,
        ),  
           ),
         ),
          ListTile(
           leading: Icon(
            CupertinoIcons.tray_arrow_up_fill,
            color:Colors.black,
           ),
           title:Text(    
             "Share App",
             textScaleFactor: 1.3,
        style: TextStyle(
          color:Colors.black,
        ),  
           ),
         ),
         ListTile(
           leading: Icon(
            CupertinoIcons.person_2_square_stack_fill,
            color:Colors.black,
           ),
           title:Text(    
             "About Us",
             textScaleFactor: 1.3,
        style: TextStyle(
          color:Colors.black,
        ),  
           ),
         ),
         ListTile(
           leading: Icon(
            CupertinoIcons.settings_solid,
            color:Colors.black,
           ),
           title:Text(    
             "Setting",
             textScaleFactor: 1.3,
        style: TextStyle(
          color:Colors.black,
        ),  
           ),
         ),
       ],
     ), 
      ),
    );
  }
}

