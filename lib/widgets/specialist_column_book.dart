import 'package:flutter/material.dart';

class SpecialistColumnBook extends StatelessWidget {
  final String specImg, specName;

  const SpecialistColumnBook({ required this.specImg, required this.specName}) ;
  @override
  Widget build(BuildContext context) {
    return Column(
      
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(10),
          width: 100,
          height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              image: DecorationImage(
                  image: NetworkImage(specImg), fit: BoxFit.cover)),
        ),
        Container(
          width: 100,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 10),
              Text(specName,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600,color: Colors.white)),
                  SizedBox(height: 4),
              
            ],
          ),
        )
      ],
    );
  }
}
