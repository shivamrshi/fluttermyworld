import "package:flutter/material.dart";

import 'home_page.dart';
void main()
{
runApp(yapp());
}
class yapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   
    return MaterialApp(
      home:HomePage(),
    );
}
}