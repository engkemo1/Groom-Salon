import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:salon/viewModel/database_local/CacheHelper.dart';

class BookController extends GetxController {
  int? selectedIndex;
  bool? selected;
  String? date, from, to, specialistId, name, price, salonId,specialistImage,specialistName;

  bool isExist = false;

  select(int index) {
    selectedIndex = index;
    update();
  }

  createOppoinment() async {
    await FirebaseFirestore.instance
        .collection('oppoinments')
        .get()
        .then((value) {
      value.docs.isNotEmpty
          ? value.docs.forEach((element) {
              if (element.id.isNotEmpty) {
                if (element.get('from') == from &&
                    element.get('date') == date &&
                    element.get('specialistId') == specialistId) {
                  isExist = true;
                } else {
                  isExist = false;
                }
              } else {
                isExist = false;
              }
            })
          : isExist = false;
      print(isExist);
    });
    print(isExist);
    if (date == null || from == null || to == null || specialistId == null) {
      Get.snackbar('Hello their', 'Please select all options');
    } else {
      if (isExist == false) {
        await FirebaseFirestore.instance.collection('oppoinments').doc().set({
          'uid': CacheHelper.get(key: 'uid'),
          'date': date,
          'from': from,
          'to': to,
          'specialistId': specialistId,
          'price': price,
          'name': name,
          'salonId': salonId,
           'specialistImage':specialistImage,
          'specialistName':specialistName
        }).then((value) => Get.snackbar('Hello their', 'successfully Booked'));
      } else {
        Get.snackbar('Hello their', 'Is already booked');
      }
    }
  }
}
