import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../other/snackBar.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  Future passwordReset() async {
    try {
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: "gurjassingh47@gmail.com");
      showDialog(context: context, builder: (context){
        return AlertDialog(
            content: Text("Email containg Password reset link has been sent!")
        );

      });


    } on FirebaseAuthException catch (e) {
      showDialog(context: context, builder: (context){
        return AlertDialog(
          content: Text(e.message.toString())
        );

      });
    }
  }

  @override
  Widget build(BuildContext context) {
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
              style: TextStyle(color: Colors.white, fontSize: 20),
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
                      borderSide: BorderSide(color: Colors.black)),
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
              validator: (email) =>
                  email != null && !EmailValidator.validate(email)
                      ? 'Enter a valid email'
                      : null,
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
              onPressed: passwordReset,
              //   snackBar.message = "Reset Email has been sent";
              //   ScaffoldMessenger.of(context).showSnackBar(snackBar().Bar);
              //
              // },
              child: const Text(
                'Reset Password',
                style: TextStyle(
                    color: Color(0xffe72041),
                    fontFamily: 'Quicksand',
                    fontWeight: FontWeight.w900,
                    fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
