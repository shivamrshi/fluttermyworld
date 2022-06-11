import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:flutter/cupertino.dart';

class previouspaper extends StatelessWidget {
  const previouspaper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
       child:Center(
       child:Text("Previous Papers",style: TextStyle(
         fontWeight: FontWeight.bold,fontSize: 30
       ),
       )
     )


    );
  }
}