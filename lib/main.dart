
import "package:flutter/material.dart";
import 'package:flutter_myapp/pages/Login_page.dart';
import 'package:flutter_myapp/pages/aktu.dart';
import 'package:flutter_myapp/pages/main_page.dart';
import 'package:flutter_myapp/pages/material.dart';
import 'package:flutter_myapp/pages/previous_papers.dart';
import 'package:flutter_myapp/pages/scholarship.dart';
import 'package:flutter_myapp/utils/routes.dart';
import 'package:flutter_myapp/widgets/themes.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'pages/home_page.dart';
import 'pages/onboarding.dart';
import 'widgets/drawer.dart';

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
          "/":(context) => OnboardingScreen(),//(context)=>LoginPage(),
           MyRoutes.loginRoute:(context) => LoginPage(),
          MyRoutes.mainpageRoute:(context) => mainpage(),
           MyRoutes.mydrawerRoute:(context) => MyDrawer(),
           MyRoutes.homeRoute:(context) => HomePage(),
            MyRoutes.trendingRoute:(context) => aktu(),
       
        
         MyRoutes.materialRoute:(context) => material(),
          MyRoutes.PreviouspapRoute:(context) =>previouspaper(),
          MyRoutes.scholarRoute:(context) =>scholarship(),
           MyRoutes.settingRoute :(context) =>mainpage(),
            MyRoutes.shareRoute :(context) =>scholarship(),
             MyRoutes.aboutRoute:(context) =>scholarship(),
        
         
         // MyRoutes.homeRoute:(context) => HomePage(),
          //MyRoutes.loginRoute:(context) => LoginPage(),
       },
    );
}
}