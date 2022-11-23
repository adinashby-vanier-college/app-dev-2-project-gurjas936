import 'package:flutter/material.dart';
import 'package:blood_bank/screens/donateBlood.dart';
import 'package:blood_bank/screens/editProfile.dart';

import 'feedback.dart';
class Users extends StatefulWidget {
  String name;
  Users({Key? key, required this.name}) : super(key: key);

  @override
  State<Users> createState() => _UsersState();
}

class _UsersState extends State<Users> {
  GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
  bool value = true;
  // Users usersObject; _UsersState(this.usersObject);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      drawer: Drawer(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            children: [
              SizedBox(
                height: 100,
                child: DrawerHeader(
                  child: Container(
                    height: 300,
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.topRight,
                          child: IconButton(
                            onPressed: () =>
                                _globalKey.currentState!.closeDrawer(),
                            icon: const Icon(Icons.menu),
                            iconSize: 50,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/pp.jpg'),
                          fit: BoxFit.fill,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(60.0)),
                      ),
                    ),
                    Container(
                      child: const Text(
                        'abc',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w900,
                            color: Color(0xffe72041)),
                      ),
                    ),
                    const Divider(
                      thickness: 2,
                      color: Colors.black,
                    ),
                    ListTile(
                      title: const Text(
                        'Edit profile',
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xffe72041),
                        ),
                      ),
                      onTap: () {

                          Navigator.pop(context);
                          Navigator.push(context, new MaterialPageRoute(builder: (context)=>new EditProfilePage()));


                      },
                    ),
                    ListTile(
                      title: const Text(
                        'History',
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xffe72041),
                        ),
                      ),
                      onTap: () {


                      },
                    ),
                    ListTile(
                      title: const Text(
                        'Feedback',
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xffe72041),
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.push(context, new MaterialPageRoute(builder: (
                            context) => new feedback()));
                      }
    ),
                    ListTile(
                      title: const Text(
                        'Settings',
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xffe72041),
                        ),
                      ),
                      onTap: () {},
                    ),
                    ListTile(
                      title: const Text(
                        'Logout',
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xffe72041),
                        ),
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xffe72041),
      body: Stack(children: [
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

//////////////////////////////////////                        // U S E R     N A M E


                        Padding(
                          padding: const EdgeInsets.only(left: 45, bottom: 40),
                          child: Container(
                            alignment: Alignment.centerLeft,
                            child: Text(widget.name,
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
                height: 10,
                color: Colors.white,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            'Blood Camps',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 110,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Container(
                                width: 320,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: Colors.black),
                                ),
                                child: TextButton(
                                  onPressed: (){},
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 80,
                                        height: 80,
                                        decoration: const BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage('images/maps.png'),
                                            )),
                                      ),
                                      Container(
                                        child: Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              child: const Text(
                                                'City Hospital',
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black),
                                              ),
                                            ),
                                            Container(
                                              child: const Text(
                                                '928 Rue Veniard Saint Laurent',
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color: Colors.black),
                                              ),
                                            ),
                                            Container(
                                              child: const Text(
                                                'H4R 1L5',
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color: Colors.black),
                                              ),
                                            ),
                                            Container(
                                              child: const Text(
                                                '514-999-9999',
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color: Colors.black),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Container(
                                width: 320,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: Colors.black),
                                ),
                                child: TextButton(
                                  onPressed: () {},
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 80,
                                        height: 80,
                                        decoration: const BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage('images/maps.png'),
                                            )),
                                      ),
                                      Container(
                                        child: Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              child: const Text(
                                                'City Hospital',
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black),
                                              ),
                                            ),
                                            Container(
                                              child: const Text(
                                                '928 Rue Veniard Saint Laurent',
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color: Colors.black),
                                              ),
                                            ),
                                            Container(
                                              child: const Text(
                                                'H4R 1L5',
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color: Colors.black),
                                              ),
                                            ),
                                            Container(
                                              child: const Text(
                                                '514-999-9999',
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color: Colors.black),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Container(
                                width: 320,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: Colors.black),
                                ),
                                child: TextButton(
                                  onPressed: () {},
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 80,
                                        height: 80,
                                        decoration: const BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage('images/maps.png'),
                                            )),
                                      ),
                                      Container(
                                        child: Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              child: const Text(
                                                'City Hospital',
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black),
                                              ),
                                            ),
                                            Container(
                                              child: const Text(
                                                '928 Rue Veniard Saint Laurent',
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color: Colors.black),
                                              ),
                                            ),
                                            Container(
                                              child: const Text(
                                                'H4R 1L5',
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color: Colors.black),
                                              ),
                                            ),
                                            Container(
                                              child: const Text(
                                                '514-999-9999',
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color: Colors.black),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Divider(
                          thickness: 5,
                          color: Color(0xffe72041),
                        ),
                      ),

                      ////////////////////////////////////////// two big buttons
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 150,
                            height: 150,
                            child: TextButton(
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.white,
                                side: const BorderSide(
                                    width: 5, color: Color(0xffe72041)),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => donateBlood()),
                                );
                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 50,
                                    height: 50,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                          'images/bloodDrop.png',
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    child: const Text(
                                      'Donate Blood',
                                      style: TextStyle(
                                          color: Color(0xffe72041),
                                          fontFamily: 'Quicksand',
                                          fontWeight: FontWeight.w900,
                                          fontSize: 22),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: 150,
                            height: 150,
                            child: TextButton(
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.white,
                                side: const BorderSide(
                                    width: 5, color: Color(0xffe72041)),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                              onPressed: () {},
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 50,
                                    height: 50,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                          'images/search.png',
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    child: const Text(
                                      'Find a Donor',
                                      style: TextStyle(
                                          color: Color(0xffe72041),
                                          fontFamily: 'Quicksand',
                                          fontWeight: FontWeight.w900,
                                          fontSize: 22),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
//////////////////////////////////////////////////          E M E R G E N C Y

                      const SizedBox(
                        height: 20,
                      ),
//////////////////////////////////////////  T O G G L E    S W I T C H   /////////
                      Container(
                        width: 330,
                        height: 70,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xffe72041), width: 5),
                          borderRadius: BorderRadius.circular(20),


                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Active to donate",
                              style: TextStyle(
                                fontSize: 20,
                                color: Color(0xffe72041),
                                fontWeight: FontWeight.bold
                              ),),

                              Transform.scale(
                                scale: 1.5,
                                child: Container(

                                  child: Switch.adaptive(
                                    activeColor: Color(0xffe72041),
                                    value: value,
                                    onChanged: (value){
                                      setState(()=>this.value = value);
                                      print(value);
                                    }
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),


                      Container(
                        width: 300,
                        height: 70,
                        child: TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: const Color(0xffe72041),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'images/ambulance.png',
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Container(
                                child: const Text(
                                  'Call Emergency',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.w900,
                                      fontSize: 22),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            //////////////////////////////////////////E M E R G E N C Y

          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30.0),
          child: IconButton(
            onPressed: () => _globalKey.currentState!.openDrawer(),
            icon: const Icon(Icons.menu),
            iconSize: 50,
          ),
        )
      ]),
    );
  }}
