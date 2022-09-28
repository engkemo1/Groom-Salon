import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:salon/pages/profileScreen.dart';

import '../uidata.dart';
import '../viewModel/database_local/CacheHelper.dart';
import '../viewModel/getx_controller/auth_controller/auth_controller.dart';
import '../widgets/image_card.dart';
import '../widgets/my_column.dart';
import '../widgets/specialist_column.dart';
import 'HairSpeacialist.dart';
import 'MyOppoinments.dart';
import 'SalonsCategoryList.dart';
import 'auth/intro.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

    final screen_size_width = MediaQuery.of(context).size.width;
    final screen_size_height = MediaQuery.of(context).size.height;
    return Scaffold(
      key: _scaffoldKey,backgroundColor: Colors.black,
      drawer: Drawer(child: MyDrawer(),backgroundColor: Colors.black,),
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.black12,
        elevation: 0,
        title:             Image.asset('images/logo.jpeg',height: 200,width: 300,),

        centerTitle: true,
        leading: IconButton(
            icon: Icon(Icons.short_text_rounded, color: UIData.lightColor,size: 40,),
            onPressed: () {
              _scaffoldKey.currentState!.openDrawer();
            }),

      ),
      body: Container(
        color: Colors.black12,
        width: screen_size_width,
        height: screen_size_height,
        padding: EdgeInsets.only(top:16, left:16, right: 16),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Row(
                children: [
                  Container(
                    height: 120,
                    width: 120,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        "images/profile.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        DateFormat.yMMMMd().format(DateTime.now()).toString(),
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'Good Morning,\n${CacheHelper.get(key: 'name')}!',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,

                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
Divider(color: Colors.white,),
              SizedBox(height: 20),

              Container(
                  height: screen_size_height * .2,
                  width: screen_size_width,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      ImageCard(cardImg: "images/braid4.jpg"),
                      SizedBox(width: 10),
                      ImageCard(cardImg: "images/braid3.jpg"),
                    ],
                  )),

              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Expanded(
                    child: InkWell(
                      onTap: () =>
                          Navigator.push(context, MaterialPageRoute(builder: (_)=>SalonCategoryList(name: 'braids',))),
                      child: MyColumn(
                        columnImg: "images/braid.png",
                        columnTxt: "Braids",
                        columnBg: UIData.lightColor,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () =>
                          Navigator.push(context, MaterialPageRoute(builder: (_)=>SalonCategoryList(name: 'abuja',))),
                      child: MyColumn(
                        columnImg: "images/abuja.png",
                        columnTxt: "Abuja",
                        columnBg: UIData.lighterColor,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () =>
                          Navigator.push(context, MaterialPageRoute(builder: (_)=>SalonCategoryList(name: 'blowDry',))),
                      child: MyColumn(
                        columnImg: "images/blow.png",
                        columnTxt: "Blowdry",
                        columnBg: UIData.lighterColor,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () =>
                          Navigator.push(context, MaterialPageRoute(builder: (_)=>SalonCategoryList(name: 'hairCut',))),
                      child: MyColumn(
                        columnImg: "images/haircut.png",
                        columnTxt: "Haircut",
                        columnBg: UIData.lighterColor,
                      ),
                    ),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Expanded(
                    child: InkWell(
                      onTap: () =>
                          Navigator.push(context, MaterialPageRoute(builder: (_)=>SalonCategoryList(name: 'relaxer',))),
                      child: MyColumn(
                        columnImg: "images/relaxer.png",
                        columnTxt: "Relaxer",
                        columnBg: UIData.lighterColor,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () =>
                          Navigator.push(context, MaterialPageRoute(builder: (_)=>SalonCategoryList(name: 'manicure',))),
                      child: const MyColumn(
                        columnImg: "images/nail.png",
                        columnTxt: "Manicure",
                        columnBg: UIData.lighterColor,
                      ),
                    ),
                  ),
                  const Expanded(
                      child: SizedBox()

                  ),
                  const Expanded(
                    child: SizedBox()

                  ),

                ],
              ),
              SizedBox(height: 6),

            ],
          ),
        ),
      ),
    );
  }

 Widget MyDrawer() {
    return
    Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
           UserAccountsDrawerHeader(

              decoration: BoxDecoration(color: UIData.mainColor.withOpacity(0.7),),
              currentAccountPicture: const CircleAvatar(
                radius: 50.0,
                backgroundColor: Color(0xFF778899),
                backgroundImage:
                AssetImage("images/profile.jpg"),
              ), accountName:  Text(CacheHelper.get(key: 'name')??'',style: const TextStyle(color: Colors.black)),
              accountEmail:  Text(CacheHelper.get(key: 'email')??'',style: const TextStyle(color: Colors.black),),
            ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 20),
            child: InkWell(
              onTap: (){
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => UserProfileScreen()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('My Profile',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: Colors.white),),
                  Icon(Icons.arrow_forward,color: UIData.mainColor,)
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 20),
            child: InkWell(
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (_)=>MyAppoinments()));},

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('My Appoinments',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: Colors.white),),
                  Icon(Icons.arrow_forward,color: UIData.mainColor,)
                ],
              ),
            ),
          ),


          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 20),
            child: InkWell(
              onTap: (){
                Get.put(AuthController()).signout();
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('LogOut',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: Colors.white),),
                  Icon(Icons.logout,color: UIData.mainColor,)
                ],
              ),
            ),
          ),

        ],
      );


  }
}
