import "package:flutter/material.dart";
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../utils/routes.dart';

class splashScreen extends StatefulWidget {
  splashScreen({Key? key}) : super(key: key);

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override


void initState(){
super.initState();
Future.delayed(Duration(seconds:3)).then((value){
 Navigator.pushNamed(context, MyRoutes.mainpageRoute) ;
//Navigator.of(context).pushReplacement(CupertinoPageRoute(builder: (ctx)=> yapp()));
});
}




   @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: SizedBox(
        width: double.infinity,
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
         children:[Image(image:AssetImage("assets/images/aaaaaa.png"),
         width:300,),
         SizedBox(
          height:50,
         ),
         SpinKitChasingDots(
  color: Colors.grey,
  size: 50.0,
 
)
          ]
         
        )
       )
  
        
       



    );
  }

}