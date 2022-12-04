import 'package:blood_bank/data/userData.dart';
import 'package:blood_bank/screens/forgotPassword.dart';
import 'package:blood_bank/screens/users.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:blood_bank/screens/navBar.dart';

import '../authService.dart';

class signIn extends StatefulWidget {
  @override
  State<signIn> createState() => _signInState();
}
bool isPasswordTextField = true;
bool showPassword = false;
final _emailController = TextEditingController();

final _passwordController = TextEditingController();
Query dbRef = FirebaseDatabase.instance.ref().child('Users');

String getEmail() {
  return _emailController.text.trim();
}

class _signInState extends State<signIn> {
  // const signIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xffe72041),
      body: Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        // // crossAxisAlignment: CrossAxisAlignment.center,
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

////////////////////////////////////////////////Email input
          const SizedBox(height: 150.0), /////create space above the fields
          Container(
            padding: const EdgeInsets.only(right: 20.0, left: 20.0, bottom: 10),
            child: TextFormField(
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20
              ),
              controller: _emailController,
              decoration: InputDecoration(
                  fillColor: const Color(0xffe72041),
                  labelText: "Email Id",
                  labelStyle: const TextStyle(
                      color: Colors.white, fontFamily: 'Quicksand'),
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(width: 3, color: Colors.white),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black
                    )
                  ),
                  errorStyle: TextStyle(
                    color: Colors.black,
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      _emailController.clear();
                    },
                    icon: const Icon(
                      Icons.clear,
                      color: Colors.white,
                    ),
                  )),
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator:(email) =>
              email != null && !EmailValidator.validate(email)
                  ? 'Enter a valid email' : null,
            ),
          ),

          ///////////////////////////////////// Password Field
          Container(
            padding: const EdgeInsets.only(right: 20.0, left: 20.0, bottom: 10),
            child: TextFormField(
              style: TextStyle(
                color: Colors.white,
                fontSize: 20
              ),
              controller: _passwordController,
              obscureText: isPasswordTextField ? showPassword : false,
              decoration: InputDecoration(
                fillColor: const Color(0xffe72041),
                labelText: "Password",
                labelStyle: const TextStyle(
                    color: Colors.white, fontFamily: 'Quicksand'),
                filled: true,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(width: 3, color: Colors.white),
                ),
                errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.black
                    )
                ),
                errorStyle: TextStyle(
                  color: Colors.black,
                ),
                suffixIcon: IconButton(
                  onPressed: () {setState(() {
                    showPassword = !showPassword;
                  });
                  },
                  icon: const Icon(
                    Icons.remove_red_eye_outlined,
                    color: Colors.white,
                  ),
                ),
              ),
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator:(value) =>
              value != null && value.length<6
                  ? 'Enter minimum 6 characters' : null,
            ),
          ),

          //////////////////////////////////////////Forgot Password
          Container(
            margin: const EdgeInsets.only(right: 20, bottom: 30),
            alignment: Alignment.centerRight,
            child: TextButton(
              child: const Text(
                "Forgot Password!",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Quicksand',
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ForgotPassword()),
                );
              },
            ),
          ),

          SizedBox(
            width: 350,
            height: 55,
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                // side: BorderSide(width: 1.0, color: Color(0xffffffff)),
              ),
              onPressed: () async {
                await FirebaseAuth.instance
                    .signInWithEmailAndPassword(
                        email: _emailController.text.trim(),
                        password: _passwordController.text.trim())
                    .then((value) {
                  userData.userKey = FirebaseAuth.instance.currentUser!.uid;
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Users()),
                  );
                });

                // Navigator.push(
                //         context,
                //         MaterialPageRoute(builder: (context) => Users()),
                // );

                _emailController.clear();
                _passwordController.clear();
              },
              child: const Text(
                'Sign in',
                style: TextStyle(
                    color: Color(0xffe72041),
                    fontFamily: 'Quicksand',
                    fontWeight: FontWeight.w900,
                    fontSize: 20),
              ),
            ),
          ),
          //
          // RichText(text: TextSpan(
          //     style: TextStyle(color: Colors.white, fontSize: 15,),
          //     text: 'no account?  ',
          //     children: [
          //       TextSpan(
          //           recognizer: TapGestureRecognizer()
          //             ..onTap = widget.onClickedSignUp,
          //           text: 'Sign Up',
          //           style: TextStyle(
          //             decoration: TextDecoration.underline,
          //             color: Colors.white,
          //           )
          //       )
          //     ]
          // ),),

          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      width: 50,
                      height: 50,
                      child: Image.asset('images/facebookicon.png')),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      width: 50,
                      height: 50,
                      child: Image.asset('images/instaicon.jpg')),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      width: 50,
                      height: 50,
                      child: Image.asset('images/twittericon.png')),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      width: 50,
                      height: 50,
                      child: Image.asset('images/whatsappicon.png')),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Future logIn() async {
  await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: _emailController.text.trim(),
      password: _passwordController.text.trim());
}
