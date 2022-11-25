import 'package:blood_bank/screens/signIn.dart';
import 'package:blood_bank/screens/users.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class auth extends StatelessWidget {
  const auth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context,snapshot) {
          if (snapshot.hasData) {
            return Users();
          }
          else
            return signIn();
        }
      ),
    );
  }
}