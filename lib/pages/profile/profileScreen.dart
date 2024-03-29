import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salon/uidata.dart';

import '../../viewModel/database_local/CacheHelper.dart';
import '../../viewModel/getx_controller/auth_controller/auth_controller.dart';
import 'Edit Information.dart';


class UserProfileScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  backgroundColor: Colors.black,
  title: const Text('Profile'),
  centerTitle: true,
  leading: IconButton(icon: Icon(Icons.arrow_back_ios,color: UIData.mainColor,),onPressed: (){Get.back();},),),
      body:  SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
              color:Colors.black
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 30,
                ),
                Container(
                  height: 150,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  alignment: Alignment.center,
                  child: const CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage(
                      'images/profile.jpg',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 24.0, 16.0, 10),
                  child: Text(
                    CacheHelper.get(key: 'name') ?? '',
                    style: const TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),
                  ),
                ),
                Text(
                  CacheHelper.get(key: 'email') ?? '',
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.07,),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color:UIData.darkColor,

                  ),
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  height: MediaQuery.of(context).size.height*0.4,
                  child: Column(
                    children: [
                      SizedBox(height: MediaQuery.of(context).size.height*0.07,),
                      ListTile(
                        trailing:const Icon(Icons.arrow_forward_ios,color: UIData.mainColor,),
                        leading: const Text(
                        'Edit Information',
                        style: TextStyle(fontSize: 19,color: Colors.white),
                      ),
                        onTap: () {
                          Get.to(EditInformation());
                        },
                      ),
                      const ListTile(
                        trailing:Icon(Icons.arrow_forward_ios,color: UIData.mainColor,),
                        leading: Text(
                        'Language',
                        style: TextStyle(fontSize: 19,color: Colors.white),
                      ),
                      ),

                      ListTile(
                        trailing:  Icon(Icons.logout,color: UIData.mainColor,),
                        onTap: () {
                          Get.put(AuthController()).signout();
                        },
                        leading:const Text(
                          'LogOut',
                          style: TextStyle(fontSize: 19,color: Colors.white),
                        ),
                      ),
                      const Spacer(),
                      const SizedBox(
                        height: 16,
                      )
                    ],),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
