import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class MyTheme{
 // static  ThemeData get themeData=>
 static ThemeData lightTheme(BuildContext context)=>
ThemeData(
          primarySwatch:Colors.grey,
       //  primarySwatch: Colors.red.shade100,
         fontFamily: GoogleFonts.lato().fontFamily,
         appBarTheme:AppBarTheme(
         color:Color.fromARGB(193, 253, 136, 136),
         elevation: 0.0,
         iconTheme:IconThemeData(color: Colors.black), 
        toolbarTextStyle: Theme.of(context).textTheme.bodyText2,
          titleTextStyle: Theme.of(context).textTheme.headline6,
         )
      //primaryTextTheme: GoogleFonts.latoTextTheme()
      );
   static ThemeData darkTheme(BuildContext context)=>
ThemeData(
          brightness: Brightness.dark,
);
   
}


