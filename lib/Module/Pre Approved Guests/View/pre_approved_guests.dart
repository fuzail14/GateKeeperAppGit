
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:gatekeeper/Constants/constants.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';



import 'guestdetails.dart';

class PreApprovedGuests extends StatefulWidget {
  const PreApprovedGuests({Key? key}) : super(key: key);

  @override
  State<PreApprovedGuests> createState() => _PreApprovedGuestsState();
}

class _PreApprovedGuestsState extends State<PreApprovedGuests> {
  bool isChecked=false;
  bool isCheckedOut=false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child: Scaffold(
          appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text("Pre Approved Guests"),centerTitle: true,),
          body:SingleChildScrollView(
          child: Column(
            children: [

       isCheckedOut? Padding(
         padding: const EdgeInsets.all(8.0),
         child: Center(
           child: Container(
             width: 200,
             child: Column(
               children: [
                 Image.asset(
                   'assets/taskcompleted.png',
                   width: 100,
                 ),
                 Text(
                   "Guest Checkout Successfully",
                   textAlign: TextAlign.center,
                   style: TextStyle(
                       color: primaryColor,
                       fontWeight: FontWeight.bold,
                       fontSize: 15),
                 )
               ],
             ),
           ),
         ),
       ):   GestureDetector(onTap: (){
                showDialog(
                  context: context,
                  builder: (context){


                    return StatefulBuilder(builder: (context,setSate)
                    {

                      return AlertDialog(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(32.0))),
                        contentPadding: EdgeInsets.only(top: 10.0),
                        title: Text("Guest Details"),
                        content: GuestDetails(),
                      );
                    });
                  }


                );



              },
                child: Padding(padding: EdgeInsets.all(8),
                  child:
                  Card(
          shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0)),
                    elevation: 50,
                    shadowColor: Colors.black,
                    child: SizedBox(
                      width: 400,

                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: CircleAvatar(
                              backgroundColor: primaryColor,
                              radius: 40,
                              child: const CircleAvatar(
                                backgroundImage:AssetImage("assets/k.webp"), //NetworkImage
                                radius: 37,
                              ), //CircleAvatar
                            ),
                          ), //CircleAvatar
                          const SizedBox(
                            height: 10,
                          ), //SizedBox
                          Center(
                            child: Text(
                              'Suleman Awan',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ), //Textstyle
                            ),
                          ),
                          Padding(padding: EdgeInsets.fromLTRB(8, 10, 8, 0),
                              child: Row(children: [
                                Text("Address",style: TextStyle(fontWeight: FontWeight.bold),),
                                Padding(padding: EdgeInsets.fromLTRB(50, 0, 8, 0),
                                    child: Text("House no 2 Room n66f",))],)),//Text
                          Padding(padding: EdgeInsets.fromLTRB(8, 10, 8, 0),
                              child: Row(children: [
                                Text("Resident Name",style: TextStyle(fontWeight: FontWeight.bold),),
                                Padding(padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
                                    child: Text("Suleman Awan"))],)),//Text
                          Padding(padding: EdgeInsets.fromLTRB(8, 10, 8, 0),
                              child: Row(children: [
                                Text("CheckIn Time",style: TextStyle(fontWeight: FontWeight.bold),),
                                Padding(padding: EdgeInsets.fromLTRB(19, 0, 8, 0),
                                    child: Text("4:00 pm"))],)),//Text
                          Padding(padding: EdgeInsets.fromLTRB(8, 10, 8, 0),
                              child: Row(children: [
                                Text("Date",style: TextStyle(fontWeight: FontWeight.bold),),
                                Padding(padding: EdgeInsets.fromLTRB(75, 0, 8, 0),
                                    child: Text("10-08-2022"))],)),//Text

                         isChecked?Padding(padding: EdgeInsets.all(10),
                           child: Container(width: MediaQuery.of(context).size.width,
                             child: ElevatedButton(onPressed: (){


                               AwesomeDialog(
                                 context: context,
                                 dialogType: DialogType.QUESTION,
                                 animType: AnimType.BOTTOMSLIDE,
                                 title: 'Are You Sure',
                                 desc:
                                 'Do You Want To Checkout this Guest ?',
                                 btnCancelOnPress: () {},
                                 btnOkOnPress: () {

                                   isCheckedOut=true;
                                   setState(() {});
                                 },
                                 btnOkText: 'Yes',
                                 btnOkColor: primaryColor,
                                 btnCancelColor: primaryColor,
                               )..show();
                               setState(() {});


                             }, child: Text("Check Out",style: TextStyle(),),
                               style: ElevatedButton.styleFrom(shape: StadiumBorder(),primary: Colors.green),

                             ),
                           ),
                         ):

                         Padding(padding: EdgeInsets.all(10),
                            child: Container(width: MediaQuery.of(context).size.width,
                              child: ElevatedButton(onPressed: (){

                                showDialog(
                                  context: context,
                                  builder :(context ){


                                    return StatefulBuilder(builder: (context,setStae)

                                    {
                                      return  AlertDialog(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                            BorderRadius.all(Radius.circular(32.0))),
                                        contentPadding: EdgeInsets.only(top: 10.0),
                                        title: Text("Guest Arrival Detail Entry"),
                                        content: Container(
                                            height: MediaQuery.of(context).size.height,
                                            width: MediaQuery.of(context).size.width,
                                            child: Padding(
                                              padding: const EdgeInsets.all(20.0),
                                              child: Column(

                                                children: [

                                                  Padding(padding:EdgeInsets.all(10.0),
                                                      child: TextFormField(decoration: InputDecoration(label: Text("Cnic")),)),
                                                  Padding(padding:EdgeInsets.all(10.0),
                                                      child: TextFormField(decoration: InputDecoration(label: Text("Mobile Number")),)),
                                                  Padding(padding:EdgeInsets.all(10.0),
                                                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                      children: [Text("Time"),Text("4:30 pm")],),
                                                  ),
                                                  Container(width: 100,
                                                    child: ElevatedButton(onPressed: (){

                                                      isChecked=true;
                                                      print(isChecked);
                                                      Get.back();

setState(() {

});


                                                    }, child: Text("Save",style: TextStyle(),),
                                                      style: ElevatedButton.styleFrom(shape: StadiumBorder(),primary: Colors.green),

                                                    ),
                                                  )
                                                ],
                                              ),
                                            )),
                                      );
                                    }
                                    );
                                  }


                                );


                              }, child: Text("Check In",style: TextStyle(),),
                                style: ElevatedButton.styleFrom(shape: StadiumBorder(),primary: Colors.green),

                              ),
                            ),
                          ) //Text
                          //Text
                      //SizedBox
                        ],
                      ), //Padding
                    ), //SizedBox
                  ),
                ),
              ) , //Card


            ],
          ))),
    );


  }



}
