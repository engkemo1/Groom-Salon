import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_dialog/flutter_animated_dialog.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';
import 'package:salon/const.dart';
import 'package:salon/uidata.dart';
import '../../../viewModel/getx_controller/create_salon_controller/add_speacialist_controller.dart';
import '../../../viewModel/routes/app_pages.dart';
import '../../../widgets/TextFormField.dart';
import '../../../widgets/button.dart';
import 'package:get/get.dart';

class AddSpeacialist extends GetView<AddSpecialistController> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black26,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon:const Icon(
              Icons.arrow_back,
            ),
            color: UIData.mainColor,
          ),
          backgroundColor: Colors.black,
          centerTitle: true,
          title: const Text(
            'Add Salon Specialist',
            style: TextStyle(color: UIData.lightColor),
          ),
        ),
        body: Padding(
            padding: const EdgeInsets.all(15.0),
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                            child: Container(
                              height: 100, width: 100,
                              decoration:const BoxDecoration(
                                  color: Colors.white30,
                                  shape: BoxShape.circle),
                              child: Center(
                                child: InkWell(
                                    onTap: () {
                                      showAnimatedDialog(
                                        context: context,
                                        barrierDismissible: true,
                                        builder: (BuildContext context) {
                                          return Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  color: Colors.black12,
                                                  borderRadius:
                                                  BorderRadius.circular(20)),
                                              height: 120,
                                              width: MediaQuery
                                                  .of(context)
                                                  .size
                                                  .width,
                                              child: Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                                children: [
                                                  Container(
                                                    child: GestureDetector(
                                                      child: Column(
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                        children: [
                                                          Container(
                                                            height: 45,
                                                            width: 45,
                                                            decoration: BoxDecoration(
                                                                color: Colors
                                                                    .white,
                                                                borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                    30)),
                                                            child: const Icon(
                                                              Icons.camera_alt,
                                                              color: Colors
                                                                  .black,
                                                              size: 35,
                                                            ),
                                                          ),
                                                          const Text(
                                                            "Camera",
                                                            style: TextStyle(
                                                                fontWeight:
                                                                FontWeight.bold,
                                                                fontSize: 15,
                                                                color: Colors
                                                                    .white,
                                                                decoration:
                                                                TextDecoration
                                                                    .none),
                                                          ),
                                                        ],
                                                      ),
                                                      onTap: () async {
                                                        try {
                                                          final _pickedFile =
                                                          await ImagePicker()
                                                              .pickImage(
                                                            source: ImageSource
                                                                .camera,

                                                          );
                                                          controller.imageFile =
                                                              File(_pickedFile!
                                                                  .path);
                                                          Get.back();
                                                        } catch (error) {
                                                          Get.back();
                                                        }
                                                      },
                                                    ),
                                                  ),
                                                  Container(
                                                    child: GestureDetector(
                                                      child: Column(
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                        children: [
                                                          Container(
                                                            height: 45,
                                                            width: 45,
                                                            decoration: BoxDecoration(
                                                                color: Colors
                                                                    .white,
                                                                borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                    30)),
                                                            child: const Icon(
                                                              Icons.photo,
                                                              color: Colors
                                                                  .black,
                                                              size: 35,
                                                            ),
                                                          ),
                                                          const Text(
                                                            "Gallery",
                                                            style: TextStyle(
                                                                fontWeight:
                                                                FontWeight.bold,
                                                                fontSize: 15,
                                                                color: Colors
                                                                    .white,
                                                                decoration:
                                                                TextDecoration
                                                                    .none),
                                                          ),
                                                        ],
                                                      ),
                                                      onTap: () async {
                                                        try {
                                                          final _pickedFile =
                                                          await ImagePicker()
                                                              .pickImage(
                                                            source: ImageSource
                                                                .gallery,
                                                            maxHeight: 400,
                                                            maxWidth: 400,
                                                          );
                                                          controller.imageFile =
                                                              File(_pickedFile!
                                                                  .path);

                                                          Get.back();
                                                        } catch (error) {
                                                          Get.back();
                                                        }
                                                        String _fileName = basename(
                                                            controller
                                                                .imageFile!
                                                                .path);

                                                        controller.image =
                                                            _fileName;
                                                      },
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          );
                                        },
                                        animationType: DialogTransitionType
                                            .size,
                                        curve: Curves.fastOutSlowIn,
                                        duration: const Duration(seconds: 1),
                                      );
                                    },
                                    child: const Icon(
                                        Icons.camera_alt_outlined)),
                              ),
                            )),

                      ],
                    ),
                    const SizedBox(height: 70,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Name",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, color: Colors.grey),
                        ),
                        TextFormWidget(
                            validator: (value) {
                              validate(value);
                            },
                            controller: controller.name,
                            textInputType: TextInputType.name,
                            obscureText: false),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                    const    Text(
                          "Email address",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, color: Colors.grey),
                        ),
                        TextFormWidget(
                            validator: (value) {
                              validateEmail(value);
                            },
                            controller: controller.email,
                            textInputType: TextInputType.emailAddress,
                            obscureText: false),
                      ],
                    ),
               const     SizedBox(
                      height: 20,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Password",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, color: Colors.grey),
                        ),
                        TextFormWidget(
                            validator: (value) {
                              validatePassword(value);
                            },
                            controller: controller.password,
                            textInputType: TextInputType.visiblePassword,
                            obscureText: true),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Confirom Password",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, color: Colors.grey),
                        ),
                        TextFormWidget(
                          validator: (value) {
                            validateConfirmPassword(
                                value, controller.password.text);
                          },
                          controller: controller.confirmPassword,
                          textInputType: TextInputType.visiblePassword,
                          obscureText: true,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              children: const[
                                Text(
                                  "From",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey),
                                ),
                                SizedBox(width: 5,),
                                Icon(Icons.access_time, color: Colors.grey,
                                  size: 20,)
                              ],
                            ),
                            Row(
                              children: const[
                                Text(
                                  "To",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey),
                                ),
                                SizedBox(width: 5,),
                                Icon(Icons.access_time, color: Colors.grey,
                                  size: 20,)
                              ],
                            ),

                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: TextFormWidget(
                                  controller: controller.from,

                                  validator: (value) {
                                    validate(value);
                                  },

                                  textInputType: TextInputType.number,
                                  obscureText: false,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: TextFormWidget(
                                  controller: controller.to,
                                  validator: (value) {
                                    validate(value);
                                  },
                                  textInputType: TextInputType.number,
                                  obscureText: false,
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MyButton(btnText: 'Add New', onpressed: () async{
                          if (_formKey.currentState!.validate())
                          {
                            String _fileName = basename(controller.imageFile!
                                .path);
                            Reference _firebaseStorageRef = FirebaseStorage
                                .instance
                                .ref()
                                .child('profilePics/$_fileName');
                            UploadTask _uploadTask =
                            _firebaseStorageRef.putFile((controller
                                .imageFile!));
                            controller.picUrl = await(await _uploadTask).ref
                                .getDownloadURL();
                            controller.image = controller.picUrl;

                            controller.onCreateAccount();
                            Get.offNamed(Routes.addSpecialist);

                          }
                        }),
                        MyButton(
                            btnText: 'Done',
                            onpressed: () async{
                              if (_formKey.currentState!.validate())
                              {
                                String _fileName = basename(controller.imageFile!
                                    .path);
                                Reference _firebaseStorageRef = FirebaseStorage
                                    .instance
                                    .ref()
                                    .child('profilePics/$_fileName');
                                UploadTask _uploadTask =
                                _firebaseStorageRef.putFile((controller
                                    .imageFile!));
                                controller.picUrl = await(await _uploadTask).ref
                                    .getDownloadURL();
                                controller.image = controller.picUrl;

                                controller.onCreateAccount();
                                Get.offNamed(Routes.salonOwner);


                              }
                            }),
                      ],
                    )
                  ],
                ),
              ),
            )));
  }

}
