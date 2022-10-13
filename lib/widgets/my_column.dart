import 'package:flutter/material.dart';
import 'package:salon/uidata.dart';

class MyColumn extends StatelessWidget {
  final String columnImg, columnTxt;
  final Color columnBg;

  const MyColumn({ required this.columnImg, required this.columnTxt, required this.columnBg});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: 60,
          height: 60,
          padding: EdgeInsets.all(10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: UIData.darkColor,
          ),
          child: Image(image: AssetImage(columnImg,),color: UIData.mainColor, fit: BoxFit.contain),
        ),
        SizedBox(height: 10),
        Text(columnTxt,style: TextStyle(color: Colors.white),),
        SizedBox(height: 10)
      ],
    );
  }
}
