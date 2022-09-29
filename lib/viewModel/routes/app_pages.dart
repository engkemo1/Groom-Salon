import 'package:get/get.dart';
import 'package:salon/pages/SalonOwner/SalonOwner.dart';
import 'package:salon/pages/SalonOwner/SalonRgister/SalonRegister.dart';
import 'package:salon/viewModel/getx_controller/create_salon_controller/binding.dart';
import '../../pages/SalonOwner/SalonRgister/add_salon_specialist.dart';
import '../../pages/auth/authentication.dart';
import '../../pages/book.dart';
import '../../pages/home.dart';
import '../../pages/auth/intro.dart';
import '../getx_controller/appoinment_controller/binding.dart';
import '../getx_controller/auth_controller/binding.dart';
import '../getx_controller/create_salon_controller/add_speacialist_controller.dart';


part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.authentication;

  static final routes = [
    GetPage(
      name: _Paths.home,
      page: () => HomePage(),
    ),
    GetPage(
      name: _Paths.salonOwner,
      page: () => const SalonOwner(),
    ),
    GetPage(

      name: _Paths.authentication,
      page: () => AuthenticationPage(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: _Paths.intro,
      page: () => IntroPage(),
    ),
    GetPage(
      name: _Paths.salonRegister,
      page: () => SalonRegister(),
      binding: CreateSalonBinding(),
    ),
    GetPage(
      name: _Paths.bookPage,
      page: () => BookPage(),
      binding: BookBinding(),
    ),
    GetPage(
      name: _Paths.addSpecialist,
      page: () => AddSpeacialist(),
      binding: CreateSalonBinding(),
    ),
  ];
}