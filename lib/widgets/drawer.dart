/*import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_myapp/widgets/drawer.dart';
class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageUrl =
    "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/93826cac-3717-4fe4-b592-fd2b409a4382/dec80vc-17a26a79-0086-45ad-8743-519db5de5e57.jpg/v1/fill/w_270,h_250,q_70,strp/tsukino_luca_by_rosettaxxx_dec80vc-250t.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9NDQ1IiwicGF0aCI6IlwvZlwvOTM4MjZjYWMtMzcxNy00ZmU0LWI1OTItZmQyYjQwOWE0MzgyXC9kZWM4MHZjLTE3YTI2YTc5LTAwODYtNDVhZC04NzQzLTUxOWRiNWRlNWU1Ny5qcGciLCJ3aWR0aCI6Ijw9NDgwIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmltYWdlLm9wZXJhdGlvbnMiXX0.zGDG7CPkD4DQpnxG-nRoo_v5eA4XZ5BhrJyqTCwme8k";
    return Drawer(
      child: Container(
        color:Color.fromARGB(173, 136, 243, 182),
     child:ListView(
       padding: EdgeInsets.zero,
       children:[
         DrawerHeader(
           padding: EdgeInsets.zero,
           child:UserAccountsDrawerHeader(
             margin: EdgeInsets.zero,
             accountName:Text("shivam"),
             accountEmail: Text("792001sh@gmail.com"),
           currentAccountPicture:CircleAvatar(
             backgroundImage: NetworkImage(imageUrl),
             
             
             ) ,

           )
         ),
        
         ListTile(
           leading: Icon(
            CupertinoIcons.home,
            color:Colors.white,
           ),
           title:Text(    
             "Home",
             textScaleFactor: 1.3,
        style: TextStyle(
          color:Colors.white,
        ),  
           ),
         ),
         ListTile(
           leading: Icon(
            CupertinoIcons.bell_circle_fill,
            color:Colors.white,
           ),
           title:Text(    
             "AKTU",
             textScaleFactor: 1.3,
        style: TextStyle(
          color:Colors.white,
        ),  
           ),
         ),
          ListTile(
           leading: Icon(
            CupertinoIcons.book_solid,
            color:Colors.white,
           ),
           title:Text(    
             "Material",
             textScaleFactor: 1.3,
        style: TextStyle(
          color:Colors.white,
        ),  
           ),
         ),
          ListTile(
           leading: Icon(
            CupertinoIcons.square_pencil_fill,
            color:Colors.white,
           ),
           title:Text(    
             "Previous Papers",
             textScaleFactor: 1.3,
        style: TextStyle(
          color:Colors.white,
        ),  
           ),
         ),
          ListTile(
           leading: Icon(
            CupertinoIcons.tray_arrow_up_fill,
            color:Colors.white,
           ),
           title:Text(    
             "Share App",
             textScaleFactor: 1.3,
        style: TextStyle(
          color:Colors.white,
        ),  
           ),
         ),
         ListTile(
           leading: Icon(
            CupertinoIcons.person_2_square_stack_fill,
            color:Colors.white,
           ),
           title:Text(    
             "About Us",
             textScaleFactor: 1.3,
        style: TextStyle(
          color:Colors.white,
        ),  
           ),
         ),
         ListTile(
           leading: Icon(
            CupertinoIcons.settings_solid,
            color:Colors.white,
           ),
           title:Text(    
             "Setting",
             textScaleFactor: 1.3,
        style: TextStyle(
          color:Colors.white,
        ),  
           ),
         ),
       ],
     ), 
      ),
    );
  }
}
*/
