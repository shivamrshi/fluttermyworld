import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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

       body:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin:const EdgeInsets.only(left:20,top: 40),
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
          height: 300,
          width:double.maxFinite ,
          child: TabBarView(
            controller:_tabController,
            children: [
                 
                    ListView.builder(
                      itemCount:3,
                      scrollDirection:Axis.horizontal,
                      itemBuilder: (BuildContext context,int index)  {
                      return  Container(
                        margin:const EdgeInsets.only(right:15,top:10),
                        height:170,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius:BorderRadius.circular(20),
                          color: Colors.white,
                          image:DecorationImage(
                            image:AssetImage("assets/images/R.jpg"),
                            fit: BoxFit.cover
                          )
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