
import "package:flutter/material.dart";
import 'package:flutter_myapp/pages/Login_page.dart';
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
      theme: ThemeData( primarySwatch: Colors.deepPurple ),
         darkTheme: ThemeData(
         brightness: Brightness.dark,
         ),
         initialRoute:"/home",
        routes : {
          "/":(context)=>LoginPage(),
          "/home":(context) => HomePage(),
          //"/login":(context) => LoginPage()
       },
    );
}
}