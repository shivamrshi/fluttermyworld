import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_myapp/pages/share_app.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../utils/routes.dart';
import '../widgets/drawer.dart';

//import '../widgets/drawer.dart';

class HomePage extends StatelessWidget {
 // final String days =41;
   //final String world="Rahul      Kumar";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(


       leading:IconButton(
        onPressed: () {
          
        Navigator.pushNamed(context, MyRoutes.mydrawerRoute);
       },
      
       icon: dddd(),
       //icon: SvgPicture.asset("assets\icons\mu.svg",color: Colors.black12),
        
       ),
       
        


       /* backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color:Colors.black),*/
        title:Text("Hello! Gyus",style: TextStyle(
         fontWeight: FontWeight.bold,fontSize: 20,
        
       ),
        //style:TextStyle(color:Colors.black),
        
        ),



      ),
      body:Center(
         child:Container(
           child: Text(" Information Technology ",style: TextStyle(
         fontWeight: FontWeight.bold,fontSize: 25
       ),),
         ),
       ),
     // drawer:MyDrawer(),
      //key: _scaffoldKey,




        /*drawer: MyDrawer(/*
          child: SingleChildScrollView(
               
              child: SafeArea(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: 
                      [
                        const DrawerHeader(),
                        const SizedBox(height: 16.0,),
                        DrawerNavigationItem(
                        iconData:CupertinoIcons.home ,
                        title: "Home",
                        onTap: () {},
                        selected:true,
                        
                        ),
                        DrawerNavigationItem(
                        iconData:Icons.CupertinoIcons.bell_circle_fill ,
                        title: "Home",
                        onTap: () {},
                        selected:true,
                        
                        )
                      ]
                     
                      )
                      )
                      ),*/
        )*/
    );
  }
}

/*
class DrawerHeader extends StatelessWidget {
  const DrawerHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      CircleAvatar(
backgroundColor:Colors.transparent,
radius: 35,
backgroundImage:
NetworkImage("https://cdn4.iconfinder.com/data/icons/education-and-learning-25/256/Smart_learning-512.png"),

      ),
      Text("Smart Study Classes",
      style: TextStyle(
        fontSize: 18,
        fontWeight:FontWeight.w400,
      ),
      )
      ]
      );
  }
}


class DrawerNavigationItem extends StatelessWidget { 
    final CupertinoIcons iconData;
    final String title;
     final bool selected;
     final Function() onTap;
    const DrawerNavigationItem({
      Key? key,
      
      required this.iconData,
      required this.title,
      required this.selected,
      required this.onTap,
    }): super(key: key);

    @override
  Widget build(BuildContext context) {
    return ListTile(
   shape: RoundedRectangleBorder(
     borderRadius: BorderRadius.circular(30.0),
   ),
   leading:CupertinoIcons.  iconData,
   onTap: onTap,
   title: Text(title ),
   selectedTileColor: Colors.lightBlueAccent.shade100,
   selected: selected,
   selectedColor: Colors.black87,
    );
  }
}*/



class dddd extends StatelessWidget {
  const dddd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(CupertinoIcons.line_horizontal_3_decrease
  
    );
  }
}




