import 'package:flutter/material.dart';
import 'package:salon/pages/auth/intro.dart';



class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
          child: Container(
            child: Stack(
              children: [

                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CircleAvatar(
                        radius: 60.0,
                        backgroundColor: Colors.deepPurpleAccent,
                        backgroundImage: AssetImage("images/profile.jpg"),
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      Text('kemo',style: const TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 20.0,
                      ),),
                      const SizedBox(
                        height: 8.0,
                      ),
                      Text('kemoeng@gmail.com',style: const TextStyle(
                        fontSize: 18.0,
                      ),),
                      const SizedBox(
                        height: 8.0,
                      ),
                      Text('+20 01142549494',style: const TextStyle(
                        fontSize: 18.0,
                      ),),
                      SizedBox(
                        height: 30.0,
                      ),
                      MaterialButton(onPressed: (){

   Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>IntroPage()));

                      },
                        color: Colors.grey[700],
                        child: const Text('Logout', style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w900,
                        ),),)
                    ],
                  ),
                ),
              ],
            ),

      ),
    );
  }
}