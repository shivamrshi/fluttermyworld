
import "package:flutter/material.dart";
import 'package:flutter_myapp/pages/Login_page.dart';
import 'package:flutter_myapp/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';
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
      theme: ThemeData(
         primarySwatch: Colors.deepPurple ,
         fontFamily: GoogleFonts.lato().fontFamily,
         appBarTheme:AppBarTheme(
         color:Colors.white,
         elevation: 0.0,
         iconTheme:IconThemeData(color: Colors.black),
         textTheme: Theme.of(context).textTheme,
         )
      //primaryTextTheme: GoogleFonts.latoTextTheme()
      ),
      debugShowCheckedModeBanner: false,
         darkTheme: ThemeData(
         brightness: Brightness.dark,
         ),
        initialRoute:MyRoutes.homeRoute,
        routes : {
          "/":(context)=>LoginPage(),
          MyRoutes.homeRoute:(context) => HomePage(),
          MyRoutes.loginRoute:(context) => LoginPage(),
       },
    );
}
}