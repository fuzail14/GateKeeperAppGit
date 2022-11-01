import 'package:flutter/material.dart';
import 'package:gatekeeper/Constants/constants.dart';

class SocietyEvents extends StatefulWidget {
  const SocietyEvents({Key? key}) : super(key: key);

  @override
  State<SocietyEvents> createState() => _SocietyEventsState();
}

class _SocietyEventsState extends State<SocietyEvents> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(

          backgroundColor: primaryColor,
          title: Text("Society Events"),centerTitle: true,),
        body:SingleChildScrollView(
            child: Column(
              children: [
               //Card
                Padding(padding: EdgeInsets.all(8),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                    elevation: 50,
                    shadowColor: Colors.black,
                    child: SizedBox(
                      width: 400,

                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                       Center(child:
                       Image.asset('assets/event_mobile.png',width: 200,)),//CircleAvatar
                          const SizedBox(
                            height: 10,
                          ), //SizedBox
                   //Tex
                          const SizedBox(
                            height: 10,
                          ), //SizedBox
                        //Text
                         Padding(padding: EdgeInsets.symmetric(vertical: 8,horizontal: 8),
                           child: Text(

                              'Basant Event',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold



                              ), //Textstyle
                            ),
                         ),

                          //Text
                          Padding(padding: EdgeInsets.fromLTRB(8,0, 30,8),
                            child: const Text(
                              'When the queen walks for atlantis tower, all girls beam proud, intelligent suns. dhdhdhhdhdhsssssssssssssssss',
                              style: TextStyle(
                                fontSize: 15,



                              ), //Textstyle
                            ),
                          ),
                      Padding(padding: EdgeInsets.fromLTRB(8,0, 30,8),
                        child: Row(
                          children: [ Text('Start Date',  style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold


                        ),),SizedBox(width: 20,),
                           Text('28-8-2002')],),
                      ),//Text
                      Padding(padding: EdgeInsets.fromLTRB(8,0, 30,8),
                        child: Row(
                          children: [ Text('End Date',  style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold


                        ),),SizedBox(width: 20,),
                           Padding(padding: EdgeInsets.fromLTRB(7, 0, 0, 0),
                               child: Text('31-8-2002'))],),
                      ),//Text
                          //Text
                          //SizedBox
                        ],
                      ), //Padding
                    ), //SizedBox
                  ),
                ), //Card
                Padding(padding: EdgeInsets.all(8),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                    elevation: 50,
                    shadowColor: Colors.black,
                    child: SizedBox(
                      width: 400,

                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                       Center(child:
                       Image.asset('assets/event_mobile.png',width: 200,)),//CircleAvatar
                          const SizedBox(
                            height: 10,
                          ), //SizedBox
                   //Tex
                          const SizedBox(
                            height: 10,
                          ), //SizedBox
                        //Text
                         Padding(padding: EdgeInsets.symmetric(vertical: 8,horizontal: 8),
                           child: Text(

                              'Basant Event',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold



                              ), //Textstyle
                            ),
                         ),

                          //Text
                          Padding(padding: EdgeInsets.fromLTRB(8,0, 30,8),
                            child: const Text(
                              'When the queen walks for atlantis tower, all girls beam proud, intelligent suns. dhdhdhhdhdhsssssssssssssssss',
                              style: TextStyle(
                                fontSize: 15,



                              ), //Textstyle
                            ),
                          ),
                      Padding(padding: EdgeInsets.fromLTRB(8,0, 30,8),
                        child: Row(
                          children: [ Text('Start Date',  style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold


                        ),),SizedBox(width: 20,),
                           Text('28-8-2002')],),
                      ),//Text
                      Padding(padding: EdgeInsets.fromLTRB(8,0, 30,8),
                        child: Row(
                          children: [ Text('End Date',  style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold


                        ),),SizedBox(width: 20,),
                           Padding(padding: EdgeInsets.fromLTRB(7, 0, 0, 0),
                               child: Text('31-8-2002'))],),
                      ),//Text
                          //Text
                          //SizedBox
                        ],
                      ), //Padding
                    ), //SizedBox
                  ),
                ), //Card
                Padding(padding: EdgeInsets.all(8),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                    elevation: 50,
                    shadowColor: Colors.black,
                    child: SizedBox(
                      width: 400,

                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Center(child:
                          Image.asset('assets/event_mobile.png',width: 200,)),//CircleAvatar
                          const SizedBox(
                            height: 10,
                          ), //SizedBox
                          //Tex
                          const SizedBox(
                            height: 10,
                          ), //SizedBox
                          //Text
                          Padding(padding: EdgeInsets.symmetric(vertical: 8,horizontal: 8),
                            child: Text(

                              'Basant Event',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold



                              ), //Textstyle
                            ),
                          ),

                          //Text
                          Padding(padding: EdgeInsets.fromLTRB(8,0, 30,8),
                            child: const Text(
                              'When the queen walks for atlantis tower, all girls beam proud, intelligent suns. dhdhdhhdhdhsssssssssssssssss',
                              style: TextStyle(
                                fontSize: 15,



                              ), //Textstyle
                            ),
                          ),
                          Padding(padding: EdgeInsets.fromLTRB(8,0, 30,8),
                            child: Row(
                              children: [ Text('Start Date',  style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold


                              ),),SizedBox(width: 20,),
                                Text('28-8-2002')],),
                          ),//Text
                          Padding(padding: EdgeInsets.fromLTRB(8,0, 30,8),
                            child: Row(
                              children: [ Text('End Date',  style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold


                              ),),SizedBox(width: 20,),
                                Padding(padding: EdgeInsets.fromLTRB(7, 0, 0, 0),
                                    child: Text('31-8-2002'))],),
                          ),//Text
                          //Text
                          //SizedBox
                        ],
                      ), //Padding
                    ), //SizedBox
                  ),
                ), //Card
                Padding(padding: EdgeInsets.all(8),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                    elevation: 50,
                    shadowColor: Colors.black,
                    child: SizedBox(
                      width: 400,

                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Center(child:
                          Image.asset('assets/event_mobile.png',width: 200,)),//CircleAvatar
                          const SizedBox(
                            height: 10,
                          ), //SizedBox
                          //Tex
                          const SizedBox(
                            height: 10,
                          ), //SizedBox
                          //Text
                          Padding(padding: EdgeInsets.symmetric(vertical: 8,horizontal: 8),
                            child: Text(

                              'Basant Event',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold



                              ), //Textstyle
                            ),
                          ),

                          //Text
                          Padding(padding: EdgeInsets.fromLTRB(8,0, 30,8),
                            child: const Text(
                              'When the queen walks for atlantis tower, all girls beam proud, intelligent suns. dhdhdhhdhdhsssssssssssssssss',
                              style: TextStyle(
                                fontSize: 15,



                              ), //Textstyle
                            ),
                          ),
                          Padding(padding: EdgeInsets.fromLTRB(8,0, 30,8),
                            child: Row(
                              children: [ Text('Start Date',  style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold


                              ),),SizedBox(width: 20,),
                                Text('28-8-2002')],),
                          ),//Text
                          Padding(padding: EdgeInsets.fromLTRB(8,0, 30,8),
                            child: Row(
                              children: [ Text('End Date',  style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold


                              ),),SizedBox(width: 20,),
                                Padding(padding: EdgeInsets.fromLTRB(7, 0, 0, 0),
                                    child: Text('31-8-2002'))],),
                          ),//Text
                          //Text
                          //SizedBox
                        ],
                      ), //Padding
                    ), //SizedBox
                  ),
                ), //Card
                Padding(padding: EdgeInsets.all(8),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                    elevation: 50,
                    shadowColor: Colors.black,
                    child: SizedBox(
                      width: 400,

                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Center(child:
                          Image.asset('assets/event_mobile.png',width: 200,)),//CircleAvatar
                          const SizedBox(
                            height: 10,
                          ), //SizedBox
                          //Tex
                          const SizedBox(
                            height: 10,
                          ), //SizedBox
                          //Text
                          Padding(padding: EdgeInsets.symmetric(vertical: 8,horizontal: 8),
                            child: Text(

                              'Basant Event',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold



                              ), //Textstyle
                            ),
                          ),

                          //Text
                          Padding(padding: EdgeInsets.fromLTRB(8,0, 30,8),
                            child: const Text(
                              'When the queen walks for atlantis tower, all girls beam proud, intelligent suns. dhdhdhhdhdhsssssssssssssssss',
                              style: TextStyle(
                                fontSize: 15,



                              ), //Textstyle
                            ),
                          ),
                          Padding(padding: EdgeInsets.fromLTRB(8,0, 30,8),
                            child: Row(
                              children: [ Text('Start Date',  style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold


                              ),),SizedBox(width: 20,),
                                Text('28-8-2002')],),
                          ),//Text
                          Padding(padding: EdgeInsets.fromLTRB(8,0, 30,8),
                            child: Row(
                              children: [ Text('End Date',  style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold


                              ),),SizedBox(width: 20,),
                                Padding(padding: EdgeInsets.fromLTRB(7, 0, 0, 0),
                                    child: Text('31-8-2002'))],),
                          ),//Text
                          //Text
                          //SizedBox
                        ],
                      ), //Padding
                    ), //SizedBox
                  ),
                ), //Card
                Padding(padding: EdgeInsets.all(8),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                    elevation: 50,
                    shadowColor: Colors.black,
                    child: SizedBox(
                      width: 400,

                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Center(child:
                          Image.asset('assets/event_mobile.png',width: 200,)),//CircleAvatar
                          const SizedBox(
                            height: 10,
                          ), //SizedBox
                          //Tex
                          const SizedBox(
                            height: 10,
                          ), //SizedBox
                          //Text
                          Padding(padding: EdgeInsets.symmetric(vertical: 8,horizontal: 8),
                            child: Text(

                              'Basant Event',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold



                              ), //Textstyle
                            ),
                          ),

                          //Text
                          Padding(padding: EdgeInsets.fromLTRB(8,0, 30,8),
                            child: const Text(
                              'When the queen walks for atlantis tower, all girls beam proud, intelligent suns. dhdhdhhdhdhsssssssssssssssss',
                              style: TextStyle(
                                fontSize: 15,



                              ), //Textstyle
                            ),
                          ),
                          Padding(padding: EdgeInsets.fromLTRB(8,0, 30,8),
                            child: Row(
                              children: [ Text('Start Date',  style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold


                              ),),SizedBox(width: 20,),
                                Text('28-8-2002')],),
                          ),//Text
                          Padding(padding: EdgeInsets.fromLTRB(8,0, 30,8),
                            child: Row(
                              children: [ Text('End Date',  style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold


                              ),),SizedBox(width: 20,),
                                Padding(padding: EdgeInsets.fromLTRB(7, 0, 0, 0),
                                    child: Text('31-8-2002'))],),
                          ),//Text
                          //Text
                          //SizedBox
                        ],
                      ), //Padding
                    ), //SizedBox
                  ),
                ), //Card



              ],
    )));
  }
}
