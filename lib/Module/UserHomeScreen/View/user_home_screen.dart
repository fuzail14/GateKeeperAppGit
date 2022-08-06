import 'package:flutter/material.dart';
import 'package:gatekeeper/Utils/constants.dart';

import 'package:get/get.dart';

import '../../../Routes/set_routes.dart';


class UserHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              child: Text('Society User'),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
              ),
              title: const Text('Society Events'),
              onTap: () {
                Get.toNamed(eventsscreen);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.home,
              ),
              title: const Text('Report To Admin'),
              onTap: () {
                Get.toNamed(reporttoadminscreen);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.home,
              ),
              title: const Text('Report To GateKeeper'),
              onTap: () {
                Get.toNamed(reporttogatekeeperscreen);
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Society User'),
        backgroundColor: overallcolor,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                color: Colors.white70,
                child: Image(
                  image: AssetImage(
                    userpic2,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: overallcolor,
          onPressed: () {
            Get.toNamed(chatavailbilityscreen);
          },
          child: const Icon(Icons.chat)),
    );
  }
}
