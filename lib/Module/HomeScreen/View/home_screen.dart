import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gatekeeper/Constants/constants.dart';
import 'package:get/get.dart';
import 'package:badges/badges.dart';
import '../../../Routes/set_routes.dart';
import '../../../Services/Shared Preferences/MySharedPreferences.dart';
import '../../Login/Model/User.dart';
class HomeScreen extends StatelessWidget {

  var argument = Get.arguments;

  late final User? user;
  @override
  Widget build(BuildContext context) {
    user = argument;
    
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
                Icons.event,
              ),
              title: const Text('Society Events'),
              onTap: () {
                Get.toNamed(societyEvents);
              },
            ),
            // ListTile(
            //   leading: Icon(
            //     Icons.fact_check,
            //   ),
            //   title: const Text('GateKeeper Attendence'),
            //   onTap: () {
            //     Get.toNamed(gateKeeperAttendance);
            //   },
            // ),
            // ListTile(
            //   leading: Icon(
            //     Icons.people,
            //   ),
            //   title: const Text('Add New Pre Approved Guests '),
            //   onTap: () {
            //
            //   },
            // ),

            ListTile(
              leading: Icon(
                Icons.how_to_reg,
              ),
              title: const Text('Pre Approved Guests'),
              onTap: () {
                Get.toNamed(preApprovedGuests);
              },
            ),
            // ListTile(
            //   leading: Icon(
            //     Icons.report,
            //   ),
            //   title: const Text('Report to Admin'),
            //   onTap: () {
            //     Get.toNamed(reporttoadminscreen);
            //   },
            // ),

            ListTile(
              leading: Icon(
                Icons.logout,
              ),
              title: const Text('Logout'),
              onTap: () {
                MySharedPreferences.deleteUserData();
                Get.offAllNamed(loginscreen);
              },
            ),


          ],
        ),
      ),
      appBar: AppBar(

        title: Text('Home'),
        backgroundColor: primaryColor,
        actions: [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 10, 15, 0),
            child: Badge(
              badgeContent: Text(
                '10',
                style: TextStyle(color: Colors.white),
              ),
              child: GestureDetector(
                  onTap: () {
                    Get.toNamed(guestArrivalNotificationScreen);
                  },
                  child: Icon(Icons.notifications)),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Divider(color: primaryColor,thickness: 1,),
            // Text("Attendance ",style: TextStyle(
            //     fontWeight: FontWeight.bold,fontSize: 20),),
            // Divider(color: primaryColor,thickness: 1,),
            // Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
            //   children: [
            //
            //   GestureDetector(onTap: (){
            //     Get.toNamed(gateKeeperAttendance);
            //
            //
            //   },
            //     child: Container(
            //       height: 100,width: 100,
            //       decoration: BoxDecoration(
            //
            //         // color: primaryColor,
            //           borderRadius: BorderRadius.circular(8),border: Border.all(
            //
            //           color: primaryColor,width: 2,
            //
            //           style: BorderStyle.solid)
            //       ),
            //       child:
            //       Column(mainAxisAlignment: MainAxisAlignment.center,
            //         children: [
            //           Icon(Icons.fact_check_rounded,color: primaryColor,),
            //           Text("Gate Keeper Attendence",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),textAlign: TextAlign.center,maxLines: 3,
            //             overflow: TextOverflow.ellipsis,)
            //
            //         ],),),
            //   ),
            //   GestureDetector(onTap: (){
            //
            //     Get.toNamed(serviceProviderCheckIn);
            //   },
            //     child: Container(height: 100,width: 100,
            //       decoration: BoxDecoration(
            //
            //         // color: primaryColor,
            //           borderRadius: BorderRadius.circular(8),border: Border.all(
            //
            //           color: primaryColor,width: 2 ,
            //
            //           style: BorderStyle.solid)
            //       ),
            //       child:
            //       Column(mainAxisAlignment: MainAxisAlignment.center,
            //         children: [
            //           Icon(Icons.arrow_forward,color: primaryColor,),
            //           Text("Service Provider CheckIn",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),textAlign: TextAlign.center,maxLines: 3,
            //             overflow: TextOverflow.ellipsis,)
            //
            //         ],),),
            //   ),
            //     GestureDetector(onTap: (){
            //
            //       Get.toNamed(serviceProviderCheckOut);
            //     },
            //       child: Container(height: 100,width: 100,
            //         decoration: BoxDecoration(
            //
            //           // color: primaryColor,
            //             borderRadius: BorderRadius.circular(8),border: Border.all(
            //
            //             color: primaryColor,width: 2 ,
            //
            //             style: BorderStyle.solid)
            //         ),
            //         child:
            //         Column(mainAxisAlignment: MainAxisAlignment.center,
            //           children: [
            //             Icon(Icons.arrow_back,color: primaryColor,),
            //             Text("Service Provider CheckOut",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,),textAlign: TextAlign.center,maxLines: 3,
            //               overflow: TextOverflow.ellipsis,)
            //
            //           ],),),
            //     ),
            //
            // ],),
            // Divider(color: primaryColor,thickness: 1,),
            // Text("Guests",style: TextStyle(
            //     fontWeight: FontWeight.bold,fontSize: 20),),
            // Divider(color: primaryColor,thickness: 1,),
Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
  children: [

  GestureDetector(onTap: (){

Get.toNamed(preApprovedGuests);
  },
    child: Container(height: 100,width: 100,
      decoration: BoxDecoration(

        // color: primaryColor,
          borderRadius: BorderRadius.circular(8),border: Border.all(

          color: primaryColor,width: 2 ,
          )
      ),
      child:
      Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.group,color: primaryColor,),
          Text("Pre Approved Guests",style:
          TextStyle(color: Colors.black,fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,maxLines: 3,
            overflow: TextOverflow.ellipsis,)

        ],),),
  ),

    // GestureDetector(onTap: (){
    //   Get.toNamed(walkInGuests);
    //
    // },
    //   child: Container(height: 100,width: 100,
    //     decoration: BoxDecoration(
    //
    //       // color: primaryColor,
    //         borderRadius: BorderRadius.circular(8),border: Border.all(
    //
    //         color: primaryColor,width: 2 ,
    //
    //         style: BorderStyle.solid)
    //     ),
    //     child:
    //     Column(mainAxisAlignment: MainAxisAlignment.center,
    //       children: [
    //
    //
    //         Icon(Icons.person_add,color: primaryColor,),
    //         Text("Walkin Guests ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),textAlign: TextAlign.center,maxLines: 3,
    //           overflow: TextOverflow.ellipsis,)
    //
    //       ],),),
    // ),


  ],),
            Divider(color: primaryColor,thickness: 1,),
            Text("Services",style: TextStyle(
                fontWeight: FontWeight.bold,fontSize: 20),),
            Divider(color: primaryColor,thickness: 1,),

            Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              // GestureDetector(onTap: (){
              //
              //   Get.toNamed(panicMode);
              // },
              //   child: Container(height: 100,width: 100,
              //     decoration: BoxDecoration(
              //
              //       // color: primaryColor,
              //         borderRadius: BorderRadius.circular(8),border: Border.all(
              //
              //       color: primaryColor,width: 2,
              //
              //     )
              //     ),
              //     child:
              //     Column(mainAxisAlignment: MainAxisAlignment.center,
              //       children: [
              //         Icon(Icons.warning,color: primaryColor,),
              //         Text("Panic Mode",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),textAlign: TextAlign.center,maxLines: 3,
              //           overflow: TextOverflow.ellipsis,)
              //
              //       ],),),
              // ),
              GestureDetector(onTap: (){
                Get.toNamed(eventsscreen,arguments: user);

              },
                child: Container(height: 100,width: 100,
                  decoration: BoxDecoration(

                    // color: primaryColor,
                      borderRadius: BorderRadius.circular(8),border: Border.all(

                    color: primaryColor,width: 2,

                  )
                  ),
                  child:
                  Column(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.event,color: primaryColor,),
                      Text("Events",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),textAlign: TextAlign.center,maxLines: 3,
                        overflow: TextOverflow.ellipsis,)

                    ],),),
              ),
              // GestureDetector(onTap: (){
              //
              //   Get.toNamed(reporttoadminscreen);
              // },
              //   child: Container(height: 100,width: 100,
              //     decoration: BoxDecoration(
              //
              //       // color: primaryColor,
              //         borderRadius: BorderRadius.circular(8),border: Border.all(
              //
              //       color: primaryColor,width: 2 ,
              //
              //     )
              //     ),
              //     child:
              //     Column(mainAxisAlignment: MainAxisAlignment.center,
              //       children: [
              //         Icon(Icons.report,color: primaryColor,),
              //         Text("Reports",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),textAlign: TextAlign.center,maxLines: 3,
              //           overflow: TextOverflow.ellipsis,)
              //
              //       ],),),
              // ),
              GestureDetector(onTap: (){

                Get.toNamed(noticeboardscreen,arguments: user);
              },
                child: Container(height: 100,width: 100,
                  decoration: BoxDecoration(

                    // color: primaryColor,
                      borderRadius: BorderRadius.circular(8),border: Border.all(

                    color: primaryColor,width: 2 ,

                  )
                  ),
                  child:
                  Column(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.report,color: primaryColor,),
                      Text("NoticeBoard",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),textAlign: TextAlign.center,maxLines: 3,
                        overflow: TextOverflow.ellipsis,)

                    ],),),
              ),


            ],)






       ]



      )),
      // floatingActionButton: FloatingActionButton(
      //     backgroundColor: primaryColor,
      //     onPressed: () {
      //       Get.toNamed(chatavailbilityscreen);
      //     },
      //     child: const Icon(Icons.chat)),
    );
  }
}
