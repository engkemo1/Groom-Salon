import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../widgets/component/indicator.dart';
import '../../database_local/CacheHelper.dart';
import '../../firebase/firebase_function.dart';

class AddSpecialistController extends GetxController {
  final FirebaseFunctions _functions = FirebaseFunctions();
  final TextEditingController name = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController confirmPassword = TextEditingController();
  final TextEditingController from = TextEditingController();
  final TextEditingController to = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  File? imageFile;
  String? picUrl;
  String? image;
  void onCreateAccount() async {
    try {
      Indicator.showLoading();

      // save out user to our ath and firebase firestore
      UserCredential cred = await _auth.createUserWithEmailAndPassword(
        email: email.text,
        password: password.text,
      );
      update();
      _firebaseFirestore.collection('salon').doc(CacheHelper.get(key: 'uid')).collection('specialist').add({

        'name': name.text,
        'image':image,
        'email': email.text,
        'uid': cred.user!.uid,
        'password': password.text,
        'role': 'Specialist',
        'from':from.text,
        'to':to.text

      });
      _functions
          .create(
              cred.user!.uid,
              {
                'name': name.text,
                'image':image,
                'email': email.text,
                'uid': cred.user!.uid,
                'password': password.text,
                'role': 'Specialist',
                'from':from.text,
                'to':to.text
              },
              'users')
          .then((value) async {
        email.clear();
        password.clear();


      });

      // String downloadUrl = await _uploadToStorage(image);

      Indicator.closeLoading();
    } catch (e) {
      Get.snackbar(
        'Error Creating Account',
        e.toString(),
      );
    }
  }
}
