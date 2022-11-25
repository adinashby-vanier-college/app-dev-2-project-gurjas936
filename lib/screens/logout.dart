import 'package:blood_bank/screens/signIn.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class logout extends StatefulWidget {

  @override
  State<logout> createState() => _logoutState();
}
class _logoutState extends State<logout> {

  final FirebaseAuth _auth = FirebaseAuth.instance;

   @override
  Widget build(BuildContext context){
     return Scaffold(
       appBar: AppBar(title: const Text('Log out'),),
         body: ElevatedButton(
         onPressed: (){
           _auth.signOut();
           Navigator.canPop(context) ? Navigator.pop(context) : null;
           Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => signIn()));
         },
         child: const Text('Log out', style: TextStyle(
             fontSize: 25,
             fontWeight: FontWeight.w900,
             color: Colors.black,
         ),),

         )
     );
   }
}