import 'package:flutter/material.dart';

class detail extends StatefulWidget {
  detail({Key? key}) : super(key: key);

  @override
  State<detail> createState() => _detailState();
}

class _detailState extends State<detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body:  Container(
      width:double. maxFinite,
      height:double.maxFinite,
       child: Stack(
        children: [
         
            Positioned(
              left: 0,
              right: 0,
              child:Container(
              width: double.maxFinite,
              height:400,
              decoration:BoxDecoration(
                color: Color.fromARGB(255, 190, 255, 130),
               /* image:DecorationImage(
                  image: AssetImage("assets/images/R.jpg"),
                  fit: BoxFit.cover,
                  ),*/
              )
            )
            ),
             Positioned(
            left: 17,
            top:40,
            child:Row(
              children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios_new),color: Colors.white,),
            ],
            )
            ),
             Positioned(
            left: 25,
            top:180,
            child:Column(
              children: [
              Text("Lemon Tea",style: TextStyle(
                color: Color.fromARGB(201, 39, 97, 22),
                fontWeight:FontWeight.bold,fontSize:25 ,
              ),)
            ],
            )
            ),
             Positioned(
            left: 25,
            top:213,
            child:Column(
              children: [
              Text("Good day time",style: TextStyle(
                color:Color.fromARGB(193, 158, 158, 158),
                fontSize:14 ,
              ),)
            ],
            )
            ),
             Positioned(
            left: 38,
            top:250,
            child:Column(
              children: [
              Text("₹",style: TextStyle(
                color: Color.fromARGB(193, 158, 158, 158),
                fontSize:23 ,
              ),)
            ],
            )
            ),
             Positioned(
            left: 50,       
            top:270,
            child:Column(
              children: [
              Text("12.99",style: TextStyle(
                color: Color.fromARGB(201, 39, 97, 22),
                fontSize:43 ,fontWeight: FontWeight.bold,
              ),
              ),
              ],
            )
            ),
              Positioned(
                top:335,
                child: Container(
                   width:MediaQuery.of(context).size.width,
                height:490,
                  
                  decoration: BoxDecoration(
                     color:Colors.white,
                    borderRadius:BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60),
                      ),
               
                )
                )
              ),
            Positioned(
            right: 50,       
            top:400,
            child:Container(
              
               decoration:BoxDecoration(
                
               image:DecorationImage(
                  image:Image("aasets/"),
                  fit: BoxFit.cover,
                  ),
              )
             
              
            )
            ),   
        ],
       ),
     ),

    );
  }
}