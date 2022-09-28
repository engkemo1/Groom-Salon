import 'package:flutter/material.dart';
import 'package:salon/pages/book.dart';
import 'package:salon/uidata.dart';

import '../widgets/specialist_column.dart';

class hairSpecialists extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        centerTitle: true,
        title: Text(
          'Hair Specialists',
          style: TextStyle(fontSize: 18, color: Colors.black),
        ),
        backgroundColor: UIData.mainColor,
      ),
      body: SingleChildScrollView(
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              SizedBox(height: 30,),

              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  width: 290,
                  height: 260,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        alignment: AlignmentDirectional.center,
                        width: 290,
                        height: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            image: DecorationImage(
                                image: AssetImage('images/braid3.jpg'), fit: BoxFit.cover)),
                      ),


                       Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Sosn Alo',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600)),
                                Row(children: <Widget>[
                                  Icon(Icons.phone, size: 19, color: Colors.grey[700]),
                                  SizedBox(width:2), Text("0722000000", style: TextStyle(
                                      color: Colors.grey[700], fontSize: 12
                                  ))
                                ],)

                              ],
                            ),
                            SizedBox(height: 4),
                            Row(children: const <Widget>[
                              Icon(Icons.star, color: UIData.mainColor, size: 16),
                              SizedBox(width: 1),
                              Icon(Icons.star, color: UIData.mainColor, size: 16),
                              SizedBox(width: 1),
                              Icon(Icons.star, color: UIData.mainColor, size: 16),
                              SizedBox(width: 1),
                              Icon(Icons.star, color: UIData.mainColor, size: 16),
                              SizedBox(width: 1),
                              Icon(Icons.star, color: UIData.lightColor, size: 16),
                            ]),
                            SizedBox(height: 4),
                          ],
                        ),

                    ],
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  width: 290,
                  height: 260,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        alignment: AlignmentDirectional.center,
                        width: 290,
                        height: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            image: DecorationImage(
                                image: AssetImage('images/braid4.jpg'), fit: BoxFit.cover)),
                      ),


                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Sosn Alo',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600)),
                              Row(children: <Widget>[
                                Icon(Icons.phone, size: 19, color: Colors.grey[700]),
                                SizedBox(width:2), Text("0722000000", style: TextStyle(
                                    color: Colors.grey[700], fontSize: 12
                                ))
                              ],)

                            ],
                          ),
                          SizedBox(height: 4),
                          Row(children: const <Widget>[
                            Icon(Icons.star, color: UIData.mainColor, size: 16),
                            SizedBox(width: 1),
                            Icon(Icons.star, color: UIData.mainColor, size: 16),
                            SizedBox(width: 1),
                            Icon(Icons.star, color: UIData.mainColor, size: 16),
                            SizedBox(width: 1),
                            Icon(Icons.star, color: UIData.mainColor, size: 16),
                            SizedBox(width: 1),
                            Icon(Icons.star, color: UIData.lightColor, size: 16),
                          ]),
                          SizedBox(height: 4),
                        ],
                      ),

                    ],
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  width: 290,
                  height: 260,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        alignment: AlignmentDirectional.center,
                        width: 290,
                        height: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            image: DecorationImage(
                                image: AssetImage('images/braid2.jpg'), fit: BoxFit.cover)),
                      ),


                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Sosn Alo',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600)),
                              Row(children: <Widget>[
                                Icon(Icons.phone, size: 19, color: Colors.grey[700]),
                                SizedBox(width:2), Text("0722000000", style: TextStyle(
                                    color: Colors.grey[700], fontSize: 12
                                ))
                              ],)

                            ],
                          ),
                          SizedBox(height: 4),
                          Row(children: const <Widget>[
                            Icon(Icons.star, color: UIData.mainColor, size: 16),
                            SizedBox(width: 1),
                            Icon(Icons.star, color: UIData.mainColor, size: 16),
                            SizedBox(width: 1),
                            Icon(Icons.star, color: UIData.mainColor, size: 16),
                            SizedBox(width: 1),
                            Icon(Icons.star, color: UIData.mainColor, size: 16),
                            SizedBox(width: 1),
                            Icon(Icons.star, color: UIData.lightColor, size: 16),
                          ]),
                          SizedBox(height: 4),
                        ],
                      ),

                    ],
                  ),
                ),
              ),


            ],
          )
        ),

    );
  }
}
