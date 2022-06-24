
import 'package:flutter/material.dart';
//import 'dart:html';


class sectiontitle extends StatelessWidget {
  const sectiontitle({
    Key? key,
    required this.title,
    required this.press,

  }) : super(key: key);
  final String title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return  Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
         
           Text(title,style:Theme.of(context).textTheme.headline6,//TextStyle(color:Colors.black,fontSize:20,fontWeight:FontWeight.bold,),
           ),
          TextButton(
            onPressed: () {},
            //style: TextButton.styleFrom(),
            child:Text("see all",style: TextStyle(color:Color.fromARGB(193, 253, 136, 136),
            )
            )
            )

        ],
        
      );
    
  }
}
