
import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:flutter_myapp/pages/detail.dart';

import 'package:flutter_myapp/pages/home.dart';
import 'package:flutter_myapp/pages/main_page.dart';
import 'package:flutter_myapp/pages/shop.dart';
import 'package:flutter_myapp/pages/shoping_cart.dart';

import 'package:flutter_myapp/utils/routes.dart';
import 'package:flutter_myapp/widgets/themes.dart';
//import 'package:google_fonts/google_fonts.dart';

import 'pages/splash.dart';
import 'widgets/drawer.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

void main()
{
runApp(yapp());
}
class yapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   
    return MaterialApp(
      
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
    
        // darkTheme: ThemeData(
        // brightness: Brightness.dark,
        // ),
           debugShowCheckedModeBanner: false,
          
        //initialRoute:MyRoutes.homeRoute,
        routes : {
          "/":(context) => splashScreen(),
         
       
          MyRoutes.mainpageRoute:(context) => mainpage(),
          MyRoutes.mydrawerRoute:(context) => MyDrawer(),
          MyRoutes.detailRoute:(context) => detail(),
          MyRoutes.trendingRoute:(context) => aktu(),  
          MyRoutes.materialRoute:(context) => material(),
          MyRoutes.PreviouspapRoute:(context) =>previouspaper(),
         
        
      
        
        
         
         // MyRoutes.homeRoute:(context) => HomePage(),
          //MyRoutes.loginRoute:(context) => LoginPage(),
       },
    );
}
}
