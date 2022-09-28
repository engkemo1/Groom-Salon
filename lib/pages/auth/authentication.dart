import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:salon/pages/home.dart';
import 'package:salon/viewModel/getx_controller/auth_controller/auth_controller.dart';
import 'package:get/get.dart';
import '../../const.dart';
import '../../uidata.dart';
import '../../widgets/TextFormField.dart';
import '../SalonOwner/SalonOwner.dart';

class AuthenticationPage extends GetView<AuthController> {
  AuthenticationPage({super.key});

  String val = 'Customer';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Container(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 350,
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 7.0,
                    color: Colors.black12,
                    offset: Offset(0, 2),
                    spreadRadius: 5.0,
                  ),
                ],
                color: Colors.black,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
              ),
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    alignment: Alignment.center,
                    height: 250,
                    child: const Center(
                      child: Image(
                          height: 249,
                          image: AssetImage(
                            "images/logo.jpeg",
                          )),
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomCenter,
                    child: TabBar(
                      unselectedLabelColor: Colors.grey,
                      labelColor: Colors.white,
                      labelStyle: const TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                      ),
                      tabs: const [
                        Tab(
                          text: '        Login        ',
                        ),
                        Tab(
                          text: '       Sign-up       ',
                        ),
                      ],
                      controller: controller.tabController,
                      indicatorWeight: 4,
                      indicatorSize: TabBarIndicatorSize.label,
                      indicatorColor: UIData.lightColor,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: controller.tabController,
                children: [
                  Center(
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 40.0, right: 40.0, top: 60.0),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Email address",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey),
                                  ),
                                  TextFormWidget(
                                      validator: (val) {
                                        validateEmail(val);
                                      },
                                      controller: controller.emailLogin,
                                      textInputType: TextInputType.emailAddress,
                                      obscureText: false),
                                ],
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Password",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey),
                                  ),
                                  TextFormWidget(
                                      validator: (val) {
                                        validatePassword(val);
                                      },
                                      controller: controller.passwordLogin,
                                      textInputType:
                                          TextInputType.visiblePassword,
                                      obscureText: true),
                                ],
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  alignment: Alignment.centerLeft,
                                  child: const Text(
                                    "Forgot password ?",
                                    style: TextStyle(
                                        color: UIData.lightColor,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    gradient: const LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [
                                          Colors.orange,
                                          UIData.mainColor,
                                        ]),
                                    borderRadius: BorderRadius.circular(25)),
                                height: 50,
                                width: 200,
                                child: TextButton(
                                  onPressed: () {
                                    controller.onLogin();
                                  },
                                  child: const Text(
                                    "Sign In",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 15),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 40.0, right: 40.0, top: 60.0),
                        child: Column(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Name",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey),
                                ),
                                TextFormWidget(
                                    validator: (val) {
                                      validate(val);
                                    },
                                    controller: controller.fullName,
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
                                const Text(
                                  "Email address",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey),
                                ),
                                TextFormWidget(
                                    validator: (val) {
                                      validateEmail(val);
                                    },
                                    controller: controller.email,
                                    textInputType: TextInputType.emailAddress,
                                    obscureText: false),
                              ],
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
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey),
                                ),
                                TextFormWidget(
                                    controller: controller.password,
                                    textInputType:
                                        TextInputType.visiblePassword,
                                    validator: (val) {
                                      validatePassword(val);
                                    },
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
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey),
                                ),
                                TextFormWidget(
                                  validator: (val) {
                                    validateEmail(val);
                                    if (val != controller.password) {
                                      return 'Password not match';
                                    }
                                  },
                                  textInputType: TextInputType.visiblePassword,
                                  obscureText: true,
                                  controller: controller.confirmPassword,
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Phone",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey),
                                ),
                                TextFormWidget(
                                  validator: (val) {
                                    validateEmail(val);

                                  },
                                  textInputType: TextInputType.phone,
                                  obscureText: false,
                                  controller: controller.phone,
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Theme(
                              data: Theme.of(context)
                                  .copyWith(canvasColor: Colors.black38),
                              child: DropdownButtonFormField(
                                  style: const TextStyle(color: Colors.black),
                                  hint: const Text(
                                    'please Select role',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  items: ['Salon Owner', 'Customer']
                                      .map((label) => DropdownMenuItem(
                                            value: label,
                                            child: Text(
                                              label.toString(),
                                              style: const TextStyle(
                                                  color: Colors.grey),
                                            ),
                                          ))
                                      .toList(),
                                  decoration: const InputDecoration(
                                      focusedBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.white)),
                                      border: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.grey))),
                                  onChanged: (String? value) {
                                    controller.setSelected(value!);
                                  }),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  gradient: const LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        Colors.orange,
                                        UIData.mainColor,
                                      ]),
                                  borderRadius: BorderRadius.circular(25)),
                              height: 50,
                              width: 200,
                              child: TextButton(
                                onPressed: () {
                                  controller.onCreateAccount();
                                },
                                child: const Text(
                                  "Sign Up",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
