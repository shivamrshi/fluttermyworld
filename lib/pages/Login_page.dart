

import "package:flutter/material.dart";
class LoginPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child:Text("Login Page",
        style:TextStyle(
          fontSize:50,
          color: Color.fromARGB(255, 117, 197, 120),
         fontWeight: FontWeight.w600,
         fontStyle:FontStyle.normal,
        ),
        )

        ),
    );
  }
}