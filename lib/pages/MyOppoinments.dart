import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../uidata.dart';
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

          icon: Icon(Icons.arrow_back_ios_new),
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
    stream: FirebaseFirestore.instance.collection('oppoinments').snapshots(),
    builder: (context, AsyncSnapshot snapshot) {
    var snap = snapshot.data.docs;
    return snapshot.connectionState == ConnectionState.waiting
    ? const Center(
    child: CircularProgressIndicator.adaptive(
    backgroundColor: UIData.mainColor,
    ),
    )
        :
SizedBox(height: MediaQuery.of(context).size.height-100,child:
ListView.builder(itemBuilder: (context,index){
  return   Card(
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
                  backgroundImage: NetworkImage(
                    snap[index]['specialistImage'],
                  ),
                ),
                SizedBox(width: 20,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(snap[index]['name'],style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 14),),
                    SizedBox(height: 6,),
                    Text(snap[index]['specialistName'],style: TextStyle(color: Colors.grey),),
                    SizedBox(height: 10,),
                    Text('${snap[index]['date']} At ${snap[index]['from']}')
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
                        child: const Text(
                          "Confirm",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 10,),

                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Text("\$ ${snap[index]['price']}", style: TextStyle(
                      color: Colors.black, fontSize: 17,fontWeight: FontWeight.bold
                  )),
                )


              ],
            ),

          ],
        ),
      ));

},itemCount: snap.length,)
  );  })


              ]
          ),
        ),
      ),
    );
  }
}
