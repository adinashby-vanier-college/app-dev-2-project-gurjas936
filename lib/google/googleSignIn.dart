import 'package:blood_bank/screens/createAccount.dart';
import 'package:blood_bank/screens/signIn.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:blood_bank/screens/users.dart';

class GoogleSignInProvider extends ChangeNotifier {
  final googleSignIn = GoogleSignIn();

  GoogleSignInAccount? _user;

  GoogleSignInAccount get user => _user!;

  handleAuthState() {
    return StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (BuildContext context, snapshot) {
          if (snapshot.hasData) {
            return Users();
          } else {
            return signIn();
          }
        });
  }
}

signInWithGoogle() async {

  final GoogleSignInAccount? googleUser = await GoogleSignIn(
    scopes: <String>["email"]).signIn();

  final GoogleSignInAuthentication googleAuth = await googleUser!.authentication;

  final credential = GoogleAuthProvider.credential(
    accessToken: googleAuth.accessToken,
    idToken: googleAuth.idToken,
  );
  return await FirebaseAuth.instance.signInWithCredential(credential);

}

signOut() {
FirebaseAuth.instance.signOut();




// Future googleLogin() async {
//   final googleUser = await googleSignIn.signIn();
//
//   if (googleUser == null) return;
//   _user = googleUser;
//
//   final googleAuth = await googleUser.authentication;
//
//   final credential = GoogleAuthProvider.credential(
//       accessToken: googleAuth.accessToken,
//       idToken: googleAuth.idToken
//   );
//
//   await FirebaseAuth.instance.signInWithCredential(credential);
//   notifyListeners();
// }


}