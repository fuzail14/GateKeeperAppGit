import 'package:flutter/material.dart';
import 'package:gatekeeper/Constants/constants.dart';
import 'package:gatekeeper/Constants/constants.dart';
import 'package:gatekeeper/Module/LoginScreen/Controller/login_screen_controller.dart';
import 'package:gatekeeper/Routes/set_routes.dart';

import 'package:get/get.dart';


class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenScreenState();
}

class _LoginScreenScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        body: GetBuilder<LoginScreenController>(
            init: LoginScreenController(),
            builder: (controller) {
              return SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Form(
                    key: controller.formKey,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          Text("Welcome",style: TextStyle(letterSpacing:0.8,
                              fontSize: 30,fontWeight: FontWeight.bold),),
                          Container(
                              child: Image(
                            image: AssetImage('assets/loginlogo.png'),height: 400,
                          )),
                          SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            keyboardType: TextInputType.number,
                            controller: controller.cnic,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'ENTER  Cnic';
                              }
                              return null;
                            },
                            onChanged: (value) {
                              debugPrint('Something changed in Cnic Text Field');
                              print('value of cnic $value');
                            },
                            decoration: InputDecoration(
                                labelText: 'CNIC',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.0))),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            keyboardType: TextInputType.number,
                            controller: controller.password,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'ENTER  Password';
                              }
                              return null;
                            },
                            onChanged: (value) {
                              debugPrint(
                                  'Something changed in Password Text Field');
                              print('value of Password $value');
                            },
                            decoration: InputDecoration(
                                labelText: 'Password',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.0))),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(width: 400,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: primaryColor,
                                shape: new RoundedRectangleBorder(
                                  borderRadius:
                                      new BorderRadius.circular(8),
                                ),
                              ),
                              child: Text(
                                'Log in',

                              ),
                              onPressed: () {
                                if (controller.formKey.currentState!
                                    .validate()) {
                                  controller.formKey.currentState!.save();
                                  Get.toNamed(homecreen);
                                } else {
                                  return null;
                                }
                              },
                            ),
                          ),
                        ]),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
