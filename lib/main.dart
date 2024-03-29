import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salon/viewModel/database_local/CacheHelper.dart';
import 'package:salon/viewModel/get_image.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:salon/viewModel/getx_controller/appoinment_controller/book_controller.dart';
import 'package:salon/viewModel/getx_controller/auth_controller/auth_controller.dart';
import 'package:salon/viewModel/routes/app_pages.dart';
import 'firebase_options.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ).then((value) =>  Get.put(AuthController())


  );


  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Salon-App",
      initialRoute: AppPages.initial,
      getPages: AppPages.routes,
      theme: ThemeData(
        textTheme: GoogleFonts.ubuntuTextTheme(
          Theme.of(context).textTheme),
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),

    );
  }
}

