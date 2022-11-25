import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const findDonor());
}

class findDonor extends StatefulWidget {
  const findDonor({Key? key}) : super(key: key);

  @override
  State<findDonor> createState() => _findDonorState();
}

class _findDonorState extends State<findDonor> {
  // private FirebaseAuth mAuth;
  Query dbRef = FirebaseDatabase.instance.ref().child('persons');
  DatabaseReference reference = FirebaseDatabase.instance.ref().child('persons');
  //
  // FirebaseDatabase database = FirebaseDatabase.instance;
  // DatabaseReference databaseUsers = FirebaseDatabase.instance.ref().child('Users');
  // String id = mAuth.getCurrentUser().getUid();
  // DatabaseReference username = databaseUsers.child(id).child("username");

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
                    // Container(
                    //   query: dbRefUsers,
                    //   itemBuilder: (BuildContext context, DataSnapshot snapshot, Animation<double> animation, int index) {
                    //
                    //     Map persons = snapshot.value as Map;
                    //     persons['key'] = snapshot.key;
                    //
                    //     return listItem(persons: persons);
                    //
                    //   },
                    //
                    //
                    // ),


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

                      Map persons = snapshot.value as Map;
                      persons['key'] = snapshot.key;

                      return listItem(persons: persons);

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
  Widget listItem({required Map persons}) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      height: 110,
      color: Color(0xffe72041),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text("Name: ", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400,color: Colors.white),),
              Text(
                persons['name'],
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400,color: Colors.white),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Text("Blood Group: ",style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400,color: Colors.white),),
              Text(
                persons['bloodGroup'],
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400,color: Colors.white),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Text("Age: ", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400,color: Colors.white),),
              Text(
                persons['age'],
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400,color: Colors.white),
              ),
            ],
          ),

          //
        ],
      ),
    );
  }
}