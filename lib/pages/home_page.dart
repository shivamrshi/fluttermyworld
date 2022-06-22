import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_myapp/pages/share_app.dart';
import 'package:flutter_myapp/utils/homescroll.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../components/image_carousel.dart';
import '../utils/routes.dart';
import '../widgets/drawer.dart';

//import '../widgets/drawer.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // final String days =41;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, MyRoutes.mydrawerRoute);
          },

          icon: dddd(),
          //icon: SvgPicture.asset("assets\icons\mu.svg",color: Colors.black12),
        ),

        /* backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color:Colors.black),*/
        title: Text(
          "Hello! Gyus",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
          //style:TextStyle(color:Colors.black),
        ),
      ),

      body:CustomScrollView(
        slivers: [
        SliverPadding(
          padding:EdgeInsets.symmetric(horizontal: 16),
          sliver: SliverToBoxAdapter(
            child: imagecarosel()
            ),
        ),
        ],
      )
    );
  }
}



class dddd extends StatelessWidget {
  const dddd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(CupertinoIcons.line_horizontal_3_decrease);
  }
}
