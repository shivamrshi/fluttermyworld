import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_myapp/pages/share_app.dart';
import 'package:flutter_myapp/utils/homescroll.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
        SliverToBoxAdapter(
          child: imagecarosel()
          ),
        ],
      )
    );
  }
}

class imagecarosel extends StatefulWidget {
  const imagecarosel({
    Key? key,
  }) : super(key: key);
  @override
  State<imagecarosel> createState() => _imagecaroselState();
}

class _imagecaroselState extends State<imagecarosel> {

  int _currentPage=0;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.81,
      child:Stack(
       alignment: Alignment.bottomRight,
      children: [PageView.builder(
            itemCount: scroll.length,
            onPageChanged:(value){
             setState(() {
               _currentPage=value;
             });

            },
            itemBuilder:(context, index) => ClipRRect(
              borderRadius:BorderRadius.all(Radius.circular(12)),
              child: Image.asset(
               scroll[index] ,
              ),
            )
          ),
          Positioned(
            bottom:16,
            right:16,
            child:Row(children:List.generate(
              scroll.length,
              (index)=> Padding(
                padding:const EdgeInsets.only(left:16/4),
              child:ffffff(isActive: index==_currentPage) ,
                )
            )
            )
          )
          
          ], 
        
        ),
      );
  }
}





class ffffff extends StatelessWidget {
  const ffffff({
    Key? key, required this.isActive,
  }) : super(key: key);
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Container(
    height:4,
    width:8,
    decoration:BoxDecoration(
      color: isActive? Color.fromARGB(193, 253, 136, 136): Colors.grey ,
      borderRadius: BorderRadius.all(Radius.circular(12)),
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
