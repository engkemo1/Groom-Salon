import 'package:flutter/material.dart';

import '../../uidata.dart';
import '../home.dart';
import '../profile/profileScreen.dart';
import 'SalonRgister/add_salon_specialist.dart';

class SalonOwner extends StatefulWidget {
  const SalonOwner({Key? key}) : super(key: key);

  @override
  State<SalonOwner> createState() => _SalonOwnerState();
}

class _SalonOwnerState extends State<SalonOwner>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(

        child: Column(children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                    'https://media.istockphoto.com/photos/young-woman-looking-for-changes-trying-new-hairstyle-at-beauty-salon-picture-id1271712634?k=20&m=1271712634&s=612x612&w=0&h=QbbNRe9lNjOmpC_tCCQZkSpWaYY_VHXdo9VCz59DnkA='),
              ),
              Positioned(
                bottom: 10,
                left: 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text('LooHair Stylist',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.w600)),
                      ],
                    ),
                    SizedBox(height: 4),
                  ],
                ),
              ),
              Positioned(
                bottom: 10,
                right: 20,
                child: Row(
                  children: const <Widget>[
                    Icon(Icons.location_on_outlined,
                        size: 23, color: Colors.red),
                    SizedBox(width: 2),
                    Text("18th ad. banha",
                        style: TextStyle(color: Colors.black, fontSize: 15))
                  ],
                ),
              ),
            ],
          ),
          TabBar(
            tabs: [
              Tab(
                text: 'Appoinment',
              ),
              Tab(
                text: 'SalonSpecialist',
              ),
              Tab(
                text: 'Profile',
              )
            ],
            controller: _tabController,
            unselectedLabelColor: Colors.grey,
            labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            labelColor: UIData.mainColor,
            indicatorColor: UIData.lightColor,
            indicatorSize: TabBarIndicatorSize.label,
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: 20,),

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
                                        "images/profile.jpg",
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'kemo magdy',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14),
                                        ),
                                        SizedBox(
                                          height: 6,
                                        ),
                                        Text(
                                          '8:00:8:30',
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text('Specialist name: ',style: TextStyle(color: UIData.mainColor,fontSize: 10),),
                                        Text('Lmo ahmed',style: TextStyle(color: UIData.lightColor,fontSize: 10),),
                                      ],
                                    ),

                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Phone:',
                                          style: TextStyle(
                                              color: UIData.mainColor),
                                        ),
                                        SizedBox(width: 2),
                                        Text("0722000000",
                                            style: TextStyle(
                                                color: Colors.grey[700],
                                                fontSize: 12))
                                      ],
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
                                        "images/profile.jpg",
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'kemo magdy',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14),
                                        ),
                                        SizedBox(
                                          height: 6,
                                        ),
                                        Text(
                                          '8:00:8:30',
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text('Specialist name: ',style: TextStyle(color: UIData.mainColor,fontSize: 10),),
                                        Text('Lmo ahmed',style: TextStyle(color: UIData.lightColor,fontSize: 10),),
                                      ],
                                    ),

                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Phone:',
                                          style: TextStyle(
                                              color: UIData.mainColor),
                                        ),
                                        SizedBox(width: 2),
                                        Text("0722000000",
                                            style: TextStyle(
                                                color: Colors.grey[700],
                                                fontSize: 12))
                                      ],
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
                                        "images/profile.jpg",
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'kemo magdy',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14),
                                        ),
                                        SizedBox(
                                          height: 6,
                                        ),
                                        Text(
                                          '8:00:8:30',
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text('Specialist name: ',style: TextStyle(color: UIData.mainColor,fontSize: 10),),
                                        Text('Lmo ahmed',style: TextStyle(color: UIData.lightColor,fontSize: 10),),
                                      ],
                                    ),

                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Phone:',
                                          style: TextStyle(
                                              color: UIData.mainColor),
                                        ),
                                        SizedBox(width: 2),
                                        Text("0722000000",
                                            style: TextStyle(
                                                color: Colors.grey[700],
                                                fontSize: 12))
                                      ],
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
                                        "images/profile.jpg",
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'kemo magdy',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14),
                                        ),
                                        SizedBox(
                                          height: 6,
                                        ),
                                        Text(
                                          '8:00:8:30',
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text('Specialist name: ',style: TextStyle(color: UIData.mainColor,fontSize: 10),),
                                        Text('Lmo ahmed',style: TextStyle(color: UIData.lightColor,fontSize: 10),),
                                      ],
                                    ),

                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Phone:',
                                          style: TextStyle(
                                              color: UIData.mainColor),
                                        ),
                                        SizedBox(width: 2),
                                        Text("0722000000",
                                            style: TextStyle(
                                                color: Colors.grey[700],
                                                fontSize: 12))
                                      ],
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
                                        "images/profile.jpg",
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'kemo magdy',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14),
                                        ),
                                        SizedBox(
                                          height: 6,
                                        ),
                                        Text(
                                          '8:00:8:30',
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text('Specialist name: ',style: TextStyle(color: UIData.mainColor,fontSize: 10),),
                                        Text('Lmo ahmed',style: TextStyle(color: UIData.lightColor,fontSize: 10),),
                                      ],
                                    ),

                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Phone:',
                                          style: TextStyle(
                                              color: UIData.mainColor),
                                        ),
                                        SizedBox(width: 2),
                                        Text("0722000000",
                                            style: TextStyle(
                                                color: Colors.grey[700],
                                                fontSize: 12))
                                      ],
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
                                        "images/profile.jpg",
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'kemo magdy',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14),
                                        ),
                                        SizedBox(
                                          height: 6,
                                        ),
                                        Text(
                                          '8:00:8:30',
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text('Specialist name: ',style: TextStyle(color: UIData.mainColor,fontSize: 10),),
                                        Text('Lmo ahmed',style: TextStyle(color: UIData.lightColor,fontSize: 10),),
                                      ],
                                    ),

                                    const    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        const   Text(
                                          'Phone:',
                                          style: TextStyle(
                                              color: UIData.mainColor),
                                        ),
                                        SizedBox(width: 2),
                                        Text("0722000000",
                                            style: TextStyle(
                                                color: Colors.grey[700],
                                                fontSize: 12))
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                          )),
                      Card(
                          margin: const EdgeInsets.all(20),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    const  CircleAvatar(
                                      radius: 22,
                                      backgroundImage: AssetImage(
                                        "images/profile.jpg",
                                      ),
                                    ),
                                    const  SizedBox(
                                      width: 20,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children:const [
                                        Text(
                                          'kemo magdy',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14),
                                        ),
                                        SizedBox(
                                          height: 6,
                                        ),
                                        Text(
                                          '8:00:8:30',
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        const   Text('Specialist name: ',style: TextStyle(color: UIData.mainColor,fontSize: 10),),
                                        const  Text('Lmo ahmed',style: TextStyle(color: UIData.lightColor,fontSize: 10),),
                                      ],
                                    ),

                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Phone:',
                                          style: TextStyle(
                                              color: UIData.mainColor),
                                        ),
                                        SizedBox(width: 2),
                                        Text("0722000000",
                                            style: TextStyle(
                                                color: Colors.grey[700],
                                                fontSize: 12))
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                          )),
                      Card(
                          margin: const EdgeInsets.all(20),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    const  CircleAvatar(
                                      radius: 22,
                                      backgroundImage: AssetImage(
                                        "images/profile.jpg",
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          'kemo magdy',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14),
                                        ),
                                        SizedBox(
                                          height: 6,
                                        ),
                                        Text(
                                          '8:00:8:30',
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Row(
                                      children: const [
                                        Text('Specialist name: ',style: TextStyle(color: UIData.mainColor,fontSize: 10),),
                                        Text('Lmo ahmed',style: TextStyle(color: UIData.lightColor,fontSize: 10),),
                                      ],
                                    ),

                                    const  SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        const     Text(
                                          'Phone:',
                                          style: TextStyle(
                                              color: UIData.mainColor),
                                        ),
                                        SizedBox(width: 2),
                                        Text("0722000000",
                                            style: TextStyle(
                                                color: Colors.grey[700],
                                                fontSize: 12))
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                          )),

                    ],
                  ),
                ),
                Scaffold(
                  floatingActionButton: FloatingActionButton(
                    backgroundColor: UIData.mainColor,
                    onPressed: (){
                      // Navigator.push(context, MaterialPageRoute(builder: (_)=>AddSpecialist()));
                    },
                    child: Icon(Icons.add),
                  ),
                  body: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(height: 70),
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
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                      image: DecorationImage(
                                          image: AssetImage('images/braid3.jpg'),
                                          fit: BoxFit.cover)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: Align(
                                      alignment: Alignment.topRight,
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.delete,
                                          color: Colors.red,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    SizedBox(height: 10),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Sosn Alo',
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w600)),
                                        Row(
                                          children: <Widget>[
                                            Icon(Icons.phone,
                                                size: 19,
                                                color: Colors.grey[700]),
                                            SizedBox(width: 2),
                                            Text("0722000000",
                                                style: TextStyle(
                                                    color: Colors.grey[700],
                                                    fontSize: 12))
                                          ],

                                        )
                                      ],
                                    ),
                                    SizedBox(height: 4),
                                    Row(children: const <Widget>[
                                      Icon(Icons.star,
                                          color: UIData.mainColor, size: 16),
                                      SizedBox(width: 1),
                                      Icon(Icons.star,
                                          color: UIData.mainColor, size: 16),
                                      SizedBox(width: 1),
                                      Icon(Icons.star,
                                          color: UIData.mainColor, size: 16),
                                      SizedBox(width: 1),
                                      Icon(Icons.star,
                                          color: UIData.mainColor, size: 16),
                                      SizedBox(width: 1),
                                      Icon(Icons.star,
                                          color: UIData.lightColor, size: 16),
                                    ]),
                                    SizedBox(height: 4),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
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
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                      image: DecorationImage(
                                          image: AssetImage('images/braid4.jpg'),
                                          fit: BoxFit.cover)
                                  ),   child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Align(
                                alignment: Alignment.topRight,
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.delete,
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                                )
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    SizedBox(height: 10),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Sosn Alo',
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w600)),
                                        Row(
                                          children: <Widget>[
                                            Icon(Icons.phone,
                                                size: 19,
                                                color: Colors.grey[700]),
                                            SizedBox(width: 2),
                                            Text("0722000000",
                                                style: TextStyle(
                                                    color: Colors.grey[700],
                                                    fontSize: 12))
                                          ],
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 4),
                                    Row(children: const <Widget>[
                                      Icon(Icons.star,
                                          color: UIData.mainColor, size: 16),
                                      SizedBox(width: 1),
                                      Icon(Icons.star,
                                          color: UIData.mainColor, size: 16),
                                      SizedBox(width: 1),
                                      Icon(Icons.star,
                                          color: UIData.mainColor, size: 16),
                                      SizedBox(width: 1),
                                      Icon(Icons.star,
                                          color: UIData.mainColor, size: 16),
                                      SizedBox(width: 1),
                                      Icon(Icons.star,
                                          color: UIData.lightColor, size: 16),
                                    ]),
                                    SizedBox(height: 4),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 30,
                        ),
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
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                      image: DecorationImage(
                                          image: AssetImage('images/braid2.jpg'),
                                          fit: BoxFit.cover)),
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Align(
                                  alignment: Alignment.topRight,
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.delete,
                                      color: Colors.red,
                                    ),
                                  ),
                                )),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    SizedBox(height: 10),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Sosn Alo',
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w600)),
                                        Row(
                                          children: <Widget>[
                                            Icon(Icons.phone,
                                                size: 19,
                                                color: Colors.grey[700]),
                                            SizedBox(width: 2),
                                            Text("0722000000",
                                                style: TextStyle(
                                                    color: Colors.grey[700],
                                                    fontSize: 12))
                                          ],
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 4),
                                    Row(children: const <Widget>[
                                      Icon(Icons.star,
                                          color: UIData.mainColor, size: 16),
                                      SizedBox(width: 1),
                                      Icon(Icons.star,
                                          color: UIData.mainColor, size: 16),
                                      SizedBox(width: 1),
                                      Icon(Icons.star,
                                          color: UIData.mainColor, size: 16),
                                      SizedBox(width: 1),
                                      Icon(Icons.star,
                                          color: UIData.mainColor, size: 16),
                                      SizedBox(width: 1),
                                      Icon(Icons.star,
                                          color: UIData.lightColor, size: 16),
                                    ]),
                                    SizedBox(height: 4),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
         UserProfileScreen()

    ],
            ),
          )
        ]),
      ),
    );
  }
}
