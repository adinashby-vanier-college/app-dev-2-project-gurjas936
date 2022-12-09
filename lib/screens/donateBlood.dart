import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'findDonor.dart';

void main() {
  runApp(const donateBlood());
}

class donateBlood extends StatefulWidget {
  const donateBlood({Key? key}) : super(key: key);

  @override
  State<donateBlood> createState() => _donateBloodState();
}
final Uri emailLaunchUri = Uri(
  scheme: 'mailto',
  path: 'nancy89jindal@gmail.com',
  query: encodeQueryParameters(<String, String>{
    'subject': 'Blood Donation!',
  }),
);
class _donateBloodState extends State<donateBlood> {

  Query dbRef = FirebaseDatabase.instance.ref().child('hospitals');
  DatabaseReference reference = FirebaseDatabase.instance.ref().child('hospitals');



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xffe72041),
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  children: [
                    Container(
                      height: 260,
                      width: 250,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/quat1.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 30),
                                child: Container(
                                  height: 70,
                                  width: 70,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('images/pp.jpg'),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(60.0)),
                                  ),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    child: const Text(
                                      'Blood Type:',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w900,
                                          color: Colors.white),
                                    ),
                                  ),
                                  Container(
                                    child: const Text(
                                      'Age:',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w900,
                                          color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding:
                            const EdgeInsets.only(left: 45, bottom: 40),
                            child: Container(
                              alignment: Alignment.centerLeft,
                              child: const Text(
                                'abc',
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w900,
                                    color: Colors.white),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.white,
                  child: FirebaseAnimatedList(
                    query: dbRef,
                    itemBuilder: (BuildContext context, DataSnapshot snapshot, Animation<double> animation, int index) {

                      Map hospitals = snapshot.value as Map;
                      hospitals['key'] = snapshot.key;

                      return listItem(hospitals: hospitals);

                    },
                  ),

                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
  Widget listItem({required Map hospitals}) {
    return Container(

      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      height: 150,
      color: Color(0xffe72041),

      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(

            mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          /*  const SizedBox(
              height: 5,
            ),*/
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(

            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(left:5),
                child: Container(
                  height: 70,
                  width: 70,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/pp.jpg'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius:
                    BorderRadius.all(Radius.circular(60.0)),
                  ),
                ),
              ),
            ],
        ),
          ),
    /*  const SizedBox(
          height: 5,
        ),*/
     /* margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(10),
        height: 110,
        color: Color(0xffe72041),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,*/
        Padding(
        padding: const EdgeInsets.all(0.0),
    child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              hospitals['name'],
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400,color: Colors.white),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              hospitals['address'],
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400,color: Colors.white),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              hospitals['postal'],
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400,color: Colors.white),
            ),
            Text(
              hospitals['contact'],
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400,color: Colors.white),
            ),
            //
          ],
        ),
        ),
           const SizedBox(
              height: 70,
            ),
            Row(
              // mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,

              children: [
                const SizedBox(
                  height: 140,
                ),

                Padding(
                    padding: const EdgeInsets.only(left:0),

                    child:IconButton(
                      icon:Icon(Icons.send_outlined),
                      onPressed: () {
                        launchUrl(emailLaunchUri);
                      },

                      color: Colors.white,

                    )
                ),
              ],
            ),

          ]
    ),
      ),
    );
  }
}