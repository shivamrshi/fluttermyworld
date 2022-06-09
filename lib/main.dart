
import "package:flutter/material.dart";
import 'package:flutter_myapp/pages/Login_page.dart';
import 'package:flutter_myapp/pages/main_page.dart';
import 'package:flutter_myapp/utils/routes.dart';
import 'package:flutter_myapp/widgets/themes.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'pages/home_page.dart';

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
        initialRoute:MyRoutes.homeRoute,
        routes : {
          "/":(context)=>LoginPage(),
          MyRoutes.mainpageRoute:(context) => mainpage(),
          MyRoutes.homeRoute:(context) => HomePage(),
          //MyRoutes.loginRoute:(context) => LoginPage(),
       },
    );
}
}