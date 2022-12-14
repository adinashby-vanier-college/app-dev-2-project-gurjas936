import 'package:blood_bank/screens/signIn.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:blood_bank/data/userData.dart';

class createAccount extends StatefulWidget {
  const createAccount({Key? key}) : super(key: key);

  @override
  State<createAccount> createState() => _createAccount();
}

class _createAccount extends State<createAccount> {
  TextEditingController _textController = TextEditingController();
  TextEditingController _name = TextEditingController();
  TextEditingController _age = TextEditingController();
  TextEditingController _bloodGroup = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  bool showPassword = true;
  late DatabaseReference dbRef;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xffe72041),
      body: GestureDetector(
        //   mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        child: Column(
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/quat.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 200.0,
                        width: 200.0,
                        decoration: const BoxDecoration(
                          // color: Colors.cyan,
                          image: DecorationImage(
                              image: AssetImage(
                                  'images/logo-removebg-preview.png'),
                              fit: BoxFit.cover),
                        ),
                      ),

                      const SizedBox(height: 10.0),
                      /////     create space above the fields
                      Container(
                        padding: const EdgeInsets.only(
                            right: 20.0, left: 20.0, bottom: 10),
                        child: TextFormField(
                          style: TextStyle(color: Colors.white, fontSize: 20),
                          controller: _name,
                          decoration: InputDecoration(
                              fillColor: const Color(0xffe72041),
                              labelText: "Name",
                              border: OutlineInputBorder(),
                              labelStyle: const TextStyle(
                                  color: Colors.white, fontFamily: 'Quicksand'),
                              filled: true,
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: const BorderSide(
                                    width: 3, color: Colors.white),
                              ),
                              suffixIcon: IconButton(
                                onPressed: () {
                                  _name.clear();
                                },
                                icon: const Icon(
                                  Icons.clear,
                                  color: Colors.white,
                                ),
                              )),
                        ),
                      ),

                      Container(
                        padding: const EdgeInsets.only(
                            right: 20.0, left: 20.0, bottom: 10),
                        child: TextFormField(
                          style: TextStyle(color: Colors.white, fontSize: 20),
                          controller: _age,
                          decoration: InputDecoration(
                              fillColor: const Color(0xffe72041),
                              labelText: "Age",
                              labelStyle: const TextStyle(
                                  color: Colors.white, fontFamily: 'Quicksand'),
                              filled: true,
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: const BorderSide(
                                    width: 3, color: Colors.white),
                              ),
                              suffixIcon: IconButton(
                                onPressed: () {
                                  _age.clear();
                                },
                                icon: const Icon(
                                  Icons.clear,
                                  color: Colors.white,
                                ),
                              )),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(
                            right: 20.0, left: 20.0, bottom: 10),
                        child: TextFormField(
                          style: TextStyle(color: Colors.white, fontSize: 20),
                          controller: _bloodGroup,
                          decoration: InputDecoration(
                              fillColor: const Color(0xffe72041),
                              labelText: "Blood Group",
                              labelStyle: const TextStyle(
                                  color: Colors.white, fontFamily: 'Quicksand'),
                              filled: true,
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: const BorderSide(
                                    width: 3, color: Colors.white),
                              ),
                              suffixIcon: IconButton(
                                onPressed: () {
                                  _bloodGroup.clear();
                                },
                                icon: const Icon(
                                  Icons.clear,
                                  color: Colors.white,
                                ),
                              )),
                        ),
                      ),

                      Container(
                        padding: const EdgeInsets.only(
                            right: 20.0, left: 20.0, bottom: 10),
                        child: TextFormField(
                          style: TextStyle(color: Colors.white, fontSize: 20),
                          controller: _textController,
                          decoration: InputDecoration(
                              fillColor: const Color(0xffe72041),
                              labelText: "Email Id",
                              labelStyle: const TextStyle(
                                  color: Colors.white, fontFamily: 'Quicksand'),
                              filled: true,
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: const BorderSide(
                                    width: 3, color: Colors.white),
                              ),
                              suffixIcon: IconButton(
                                onPressed: () {
                                  _textController.clear();
                                },
                                icon: const Icon(
                                  Icons.clear,
                                  color: Colors.white,
                                ),
                              )),
                        ),
                      ),

                      ///////////////////////////////////// Password Field
                      Container(
                        padding: const EdgeInsets.only(
                            right: 20.0, left: 20.0, bottom: 10),
                        child: TextFormField(
                          style: TextStyle(color: Colors.white, fontSize: 20),
                          controller: _passwordController,
                          obscureText: showPassword,
                          decoration: InputDecoration(
                            fillColor: const Color(0xffe72041),
                            labelText: "Password",
                            labelStyle: const TextStyle(
                                color: Colors.white, fontFamily: 'Quicksand'),
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: const BorderSide(
                                  width: 3, color: Colors.white),
                            ),
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  showPassword = !showPassword;
                                });
                              },
                              icon: const Icon(
                                Icons.remove_red_eye_outlined,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),

                      //////////////////////////////////////////Forgot Password
                      SizedBox(
                        width: 350,
                        height: 55,
                        child: TextButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            // side: BorderSide(width: 1.0, color: Color(0xffffffff)),
                          ),
                          onPressed: () async {
                            showDialog(
                                context: context,
                                barrierDismissible: false,
                                builder: (context) => Center(
                                      child: CircularProgressIndicator(),
                                    ));

                            try {

                             var user = await FirebaseAuth.instance
                                  .createUserWithEmailAndPassword(
                                      email: _textController.text.trim(),
                                      password: _passwordController.text.trim());
                             userData.userKey = user.user!.uid;
                            } on FirebaseAuthException catch (e) {
                              print(e);
                            }
                            dbRef = FirebaseDatabase.instance.ref().child('Users/');

                            Map<String, String> Users = {
                              'name': _name.text,
                              'age': _age.text,
                              'bloodGroup': _bloodGroup.text,
                              'email': _textController.text,
                            };

                            dbRef.child(userData.userKey).set(Users).then(
                                  (value) => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => signIn()),
                                  ),
                                );
                            // navigatorKey.currentState!.popUntil((route) => route());

                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => Users()),
                            // );
                          },
                          child: const Text(
                            'Create Account',
                            style: TextStyle(
                                color: Color(0xffe72041),
                                fontFamily: 'Quicksand',
                                fontWeight: FontWeight.w900,
                                fontSize: 20),
                          ),
                        ),
                      ),
                      // ],
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
