import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:salon/pages/book.dart';
import 'package:salon/uidata.dart';
import 'package:get/get.dart';
class SalonCategoryList extends StatelessWidget {
  final String name;

  const SalonCategoryList({Key? key, required this.name}) : super(key: key);

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
        title: Text(
          name,
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('salon').snapshots(),
        builder: (context,AsyncSnapshot snapshot) {
          var snap= snapshot.data.docs;
          return   snapshot.connectionState==ConnectionState.waiting?
              Center(child: CircularProgressIndicator.adaptive(backgroundColor:UIData.mainColor ,),)
              :

           Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: List.generate(snap.length, (index) =>  SizedBox(
                    height: 150,
                    child: Card(
color: UIData.lightColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.network(
                                snap[index]['salonImage'],
                                width: 120,
                              ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                snap[index]['salonName'],
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                snap[index]['salonAddress'],
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.grey),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'opening ${snap[index]['from']}:00am - ${snap[index]['to']}:00pm',
                                style: TextStyle(
                                    fontSize: 9,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black),
                              ),

                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  Get.to(BookPage(from: int.tryParse(snap[index]['from']),to:int.tryParse(snap[index]['to']) ,));
                                },
                                child: Center(
                                  child: Text(
                                    'Book Now',
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20)),
                                    backgroundColor: UIData.mainColor,
                                    maximumSize: Size(80, 30),
                                    minimumSize: Size(40, 20)),
                              ),
                              Text(
                                ' \$ ${snap[index][name]}',
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ],
                          )
                        ],
                      ),
                    )),)
                 
                 
                
              ),
            ),
          );
        }
      ),
    );
  }
}
