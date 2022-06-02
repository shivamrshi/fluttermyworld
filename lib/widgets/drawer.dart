import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageUrl =
    "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/93826cac-3717-4fe4-b592-fd2b409a4382/dec80vc-17a26a79-0086-45ad-8743-519db5de5e57.jpg/v1/fill/w_270,h_250,q_70,strp/tsukino_luca_by_rosettaxxx_dec80vc-250t.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9NDQ1IiwicGF0aCI6IlwvZlwvOTM4MjZjYWMtMzcxNy00ZmU0LWI1OTItZmQyYjQwOWE0MzgyXC9kZWM4MHZjLTE3YTI2YTc5LTAwODYtNDVhZC04NzQzLTUxOWRiNWRlNWU1Ny5qcGciLCJ3aWR0aCI6Ijw9NDgwIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmltYWdlLm9wZXJhdGlvbnMiXX0.zGDG7CPkD4DQpnxG-nRoo_v5eA4XZ5BhrJyqTCwme8k";
    return Drawer(
      child: Container(
        color:Colors.deepPurple,
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
             backgroundImage: NetworkImage(imageUrl)
             ) ,

           )
         ),
        /* ListTile(
           leading: Icon(
           //  CupertinoIcons.home,
           )
         )*/
       ],
     ), 
      ),
    );
  }
}