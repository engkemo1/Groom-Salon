import 'package:get/get.dart';
import 'package:salon/viewModel/getx_controller/create_salon_controller/add_speacialist_controller.dart';

import 'create_salon_controller.dart';


class CreateSalonBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CreateSalonController>(
          () => CreateSalonController(),
    );
    Get.lazyPut<AddSpecialistController>(
          () => AddSpecialistController(),
    );

  }
}