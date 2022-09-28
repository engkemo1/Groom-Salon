import 'package:flutter/material.dart';

import '../uidata.dart';
import 'home.dart';

class MyAppoinments extends StatelessWidget {

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
          'Appoinment',
          style: TextStyle(fontSize: 18, color: Colors.black),
        ),
        backgroundColor: UIData.mainColor,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),


                Card(
                    margin: EdgeInsets.all(20),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 22,
                                backgroundImage: AssetImage(
                                  "images/braid4.jpg",
                                ),
                              ),
                              SizedBox(width: 20,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Hair Cuting',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 14),),
                                  SizedBox(height: 6,),
                                  Text('Nono adle',style: TextStyle(color: Colors.grey),),
                                  SizedBox(height: 10,),
                                  Text('17th 2019 Thu At 8:00 Am')
                                ],
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: UIData.mainColor,
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    height: 25,
                                    width: 70,
                                    child: TextButton(
                                      onPressed: () {
                                        Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => HomePage()));
                                      },
                                      child: Text(
                                        "Confirom",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 10,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                              SizedBox(height: 10,),

                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Text("\$ 2000", style: TextStyle(
                                      color: Colors.black, fontSize: 17,fontWeight: FontWeight.bold
                                  )),
                              )


                            ],
                          ),

                        ],
                      ),
                    )),
                Card(
                    margin: EdgeInsets.all(20),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 22,
                                backgroundImage: AssetImage(
                                  "images/braid4.jpg",
                                ),
                              ),
                              SizedBox(width: 20,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Hair Cuting',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 14),),
                                  SizedBox(height: 6,),
                                  Text('Nono adle',style: TextStyle(color: Colors.grey),),
                                  SizedBox(height: 10,),
                                  Text('17th 2019 Thu At 8:00 Am')
                                ],
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: UIData.mainColor,
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    height: 25,
                                    width: 70,
                                    child: TextButton(
                                      onPressed: () {
                                        Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => HomePage()));
                                      },
                                      child: Text(
                                        "Confirom",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 10,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                              SizedBox(height: 10,),

                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Text("\$ 2000", style: TextStyle(
                                    color: Colors.black, fontSize: 17,fontWeight: FontWeight.bold
                                )),
                              )


                            ],
                          ),

                        ],
                      ),
                    )),
                Card(
                    margin: EdgeInsets.all(20),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 22,
                                backgroundImage: AssetImage(
                                  "images/braid4.jpg",
                                ),
                              ),
                              SizedBox(width: 20,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Hair Cuting',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 14),),
                                  SizedBox(height: 6,),
                                  Text('Nono adle',style: TextStyle(color: Colors.grey),),
                                  SizedBox(height: 10,),
                                  Text('17th 2019 Thu At 8:00 Am')
                                ],
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: UIData.mainColor,
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    height: 25,
                                    width: 70,
                                    child: TextButton(
                                      onPressed: () {
                                        Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => HomePage()));
                                      },
                                      child: Text(
                                        "Confirom",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 10,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                              SizedBox(height: 10,),

                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Text("\$ 2000", style: TextStyle(
                                    color: Colors.black, fontSize: 17,fontWeight: FontWeight.bold
                                )),
                              )


                            ],
                          ),

                        ],
                      ),
                    )),


              ]
          ),
        ),
      ),
    );
  }
}
