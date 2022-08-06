import 'package:flutter/material.dart';
import 'package:gatekeeper/Routes/routes_managment.dart';
import 'package:gatekeeper/Routes/set_routes.dart';
import 'package:get/get.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: splashscreen,
      getPages: RouteManagement.getPages(),
    );
  }
}
