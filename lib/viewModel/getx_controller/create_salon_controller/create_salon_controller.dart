import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salon/pages/SalonOwner/SalonRgister/add_salon_specialist.dart';
import '../../../widgets/component/indicator.dart';
import '../../database_local/CacheHelper.dart';
import '../../firebase/firebase_function.dart';
import '../../routes/app_pages.dart';

class CreateSalonController extends GetxController {
  final FirebaseFunctions _functions = FirebaseFunctions();
  final TextEditingController salonName = TextEditingController();
  final TextEditingController salonContact = TextEditingController();
  final TextEditingController salonAddress = TextEditingController();
  final TextEditingController specialist = TextEditingController();
  final TextEditingController from = TextEditingController();
  final TextEditingController to = TextEditingController();
  final TextEditingController braids = TextEditingController();
  final TextEditingController abuja = TextEditingController();
  final TextEditingController blowDry = TextEditingController();
  final TextEditingController hairCut = TextEditingController();
  final TextEditingController relaxer = TextEditingController();
  final TextEditingController shampoo = TextEditingController();
  final TextEditingController manicure = TextEditingController();
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  List<String> options = [
    'Braids,Abuja,BlowDry,HirCut',
    'Relaxer,Shampoo,Manicure'
  ];
  Rx<List<String>> selectedOptionList = Rx<List<String>>([]);
  var selectedOption = ''.obs;
  File? imageFile;
  String? picUrl;
  String? image;
  createSalon() {
    Indicator.showLoading();

   try{

       _functions.create(CacheHelper.get(key: 'uid'), {
         'salonName': salonName.text,
         'salonImage': image,
         'salonContact': salonContact.text,
         'salonAddress': salonAddress.text,
         'from':from.text,
         'to':to.text,
         'blowDry':blowDry.text,
         'relaxer':relaxer.text,
         'hairCut':hairCut.text,
         'abuja':abuja.text,
         'manicure':manicure.text,
         'braids':braids.text


       }, 'salon').then((value) {
         Indicator.closeLoading();
         Get.offNamed(Routes.salonOwner);

         salonName.clear();
         salonContact.clear();
         salonAddress.clear();
         from.clear();
         to.clear();
       });

   }catch(e){
     Indicator.closeLoading();

   }
  }


}