import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:flutter/cupertino.dart';

class material extends StatelessWidget {
  const material({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
       child:Center(
       child:Text("Material",style: TextStyle(
         fontWeight: FontWeight.bold,fontSize: 30
       ),
       )
     )


    );
  }
}