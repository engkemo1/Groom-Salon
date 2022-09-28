import 'package:flutter/material.dart';

import '../uidata.dart';

class MyButton2 extends StatelessWidget {
  final String btnText;
  final VoidCallback onpressed;

  const MyButton2({ required this.btnText, required this.onpressed}) ;
  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: EdgeInsets.symmetric(horizontal: 10),
      height: 30,
      child: TextButton(
        style: TextButton.styleFrom(
          primary: UIData.mainColor,
          shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
        ),        onPressed: onpressed,
        child: Text(btnText, style: TextStyle(color: Colors.white, 
        fontWeight: FontWeight.w400)),
      ),
    );
  }

}