import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/routes.dart';

class aktu extends StatefulWidget {
  const aktu({Key? key}) : super(key: key);

  @override
  State<aktu> createState() => _aktuState();
}

class _aktuState extends State<aktu> with TickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
   TabController _tabController = TabController(length:4,vsync: this);
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
            "Hi! John!",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
            //style:TextStyle(color:Colors.black),
          ),
        ),
       body:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin:const EdgeInsets.only(left:20,top:10),
             child:Text("Discover",style: TextStyle(
         fontWeight: FontWeight.bold,fontSize: 30
       ),
       )
          ),
      SizedBox(height: 12,),
      //tabbar
      Container(
        child: Align(
          alignment:Alignment.centerLeft,
          child: TabBar(
            labelPadding: const EdgeInsets.only(left:20,right:20),
            controller:_tabController,
            unselectedLabelColor:Colors.grey,
            labelColor:Colors.black ,
            isScrollable: true,
            indicatorSize: TabBarIndicatorSize.label,
            indicator:CircleTabIndicator(color:Color.fromARGB(255, 252, 150, 150),radius: 5),
            tabs: [
             Tab(text:"Aktu"),
             Tab(text:"JEE"),
             
             Tab(text:"10th class"),
             Tab(text:"12th class"),
        
          ],
          ),
        ),
      ),
         Container(
          padding:const EdgeInsets.only(left:20),
          height: 220,
          width:double.maxFinite ,
          child: TabBarView(
            controller:_tabController,
            children: [
                 
                    ListView.builder(
                      
                      itemCount:3,
                      scrollDirection:Axis.horizontal,
                      itemBuilder: (BuildContext context,int index)  {
                      return  InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, MyRoutes.detailRoute) ;
                        },
                        child: Container(
                          margin:const EdgeInsets.only(right:15,top:10),
                          height:150,
                          width: 130,
                          
                          decoration: BoxDecoration(
                            borderRadius:BorderRadius.circular(20),
                            color: Color.fromARGB(255, 190, 255, 130),
                          /*  image:DecorationImage(
                              image:AssetImage("assets/images/R.jpg"),
                              fit: BoxFit.cover
                            )*/
                          ),
                        ),
                      );
                      }
                     
                    ),
                  
                  Text("hi"),
                  Text("hi"),
                  Text("hi"),
         
            ]
            ),
         )
        
        ],
       )
    );
  }
}


 class CircleTabIndicator extends Decoration{
  final Color color;
  double radius;
  CircleTabIndicator({required this.color,required this .radius});
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    // TODO: implement createBoxPainter
     return _circlepainter(color:color, radius:radius);
  }
  
}

class _circlepainter extends BoxPainter{
  final Color color;
  double radius;
 _circlepainter({required this.color,required this .radius});
  @override
  void paint(Canvas canvas, Offset offset,
   ImageConfiguration configuration) {
    Paint _paint= Paint();
    _paint.color=color;
     _paint.isAntiAlias=true;
     final Offset circleOffset=Offset(configuration.size!.width/2-radius/2,configuration.size!.height-radius);

   canvas.drawCircle(offset+circleOffset ,radius, _paint);
  }
  
}




class dddd extends StatelessWidget {
  const dddd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(CupertinoIcons.line_horizontal_3_decrease);
  }
}
