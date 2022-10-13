import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../uidata.dart';
import '../viewModel/database_local/CacheHelper.dart';
import 'home.dart';

class MyAppoinments extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(

        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },

          icon: Icon(Icons.arrow_back_ios_new,color: UIData.mainColor,),
        ),

        centerTitle: true,
        title: const Text(
          'Appoinment',
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),

    StreamBuilder(
    stream: FirebaseFirestore.instance.collection('oppoinments').where('uid',isEqualTo: CacheHelper.get(key:'uid')).snapshots(),
    builder: (context, AsyncSnapshot snapshot) {
    if(snapshot.connectionState == ConnectionState.waiting){
    return
    const Center(
    child: CircularProgressIndicator.adaptive(
    backgroundColor: UIData.mainColor,
    ),
    );
    } else{
      var snap = snapshot.data.docs;

      return SizedBox(height: MediaQuery.of(context).size.height-100,child:
ListView.builder(itemBuilder: (context,index){


  return   Card(
    color: UIData.darkColor,
      margin: EdgeInsets.all(20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 22,
                  backgroundImage: NetworkImage(
                    snap[index]['specialistImage'],
                  ),
                ),
                SizedBox(width: 20,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(snap[index]['name'],style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 14),),
                    SizedBox(height: 6,),
                    Text(snap[index]['specialistName'],style: TextStyle(color: Colors.grey),),
                    SizedBox(height: 10,),
                    Text('${snap[index]['date']} At ${snap[index]['from']}',style: TextStyle(color: Colors.white),)
                  ],
                ),
              ],
            ),
            Column(
              children: [


                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Text("\$ ${snap[index]['price']}", style: TextStyle(
                      color: UIData.mainColor, fontSize: 17,fontWeight: FontWeight.bold
                  )),
                )


              ],
            ),

          ],
        ),
      ));

},itemCount: snap.length,)
  );  }})


              ]
          ),
        ),
      ),
    );
  }
}
