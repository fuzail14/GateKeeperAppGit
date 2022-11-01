import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gatekeeper/Routes/set_routes.dart';

import 'package:get/get.dart';

import '../../../Constants/constants.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () => Get.toNamed(loginscreen));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            child: Image(
          image: AssetImage(splashlogo),
        )),
      ),
    );
  }
}
