import 'package:flutter/material.dart';
import 'package:flutter_myapp/pages/share_app.dart';

//import '../widgets/drawer.dart';

class HomePage extends StatelessWidget {
  final int days =1;
   final String world="gruko";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
       /* backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color:Colors.black),*/
        title:Text("Hello",
        //style:TextStyle(color:Colors.black),
        ),
      ),
      body:Center(
         child:Container(
           child: Text(" this is my day $days in this planet $world"),
         ),
       ),
     // drawer:MyDrawer(),
      //key: _scaffoldKey,
        drawer: Drawer(
          child: SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: SafeArea(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: 
                      [
                        const DrawerHeader(),
                        const SizedBox(height: 16.0,),
                        DrawerNavigationItem()
                      ]
                      )
                      )
                      ),
        )
    );
  }
}

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


class DrawerNavigationItem extends StatelessWidget 
  