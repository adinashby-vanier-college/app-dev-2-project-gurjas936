import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

final _emailController = TextEditingController();

class _ForgotPasswordState extends State<ForgotPassword> {
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
              onPressed: () {},
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


              },
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
