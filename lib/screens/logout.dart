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
       appBar: AppBar(title: const Text('Log out'),backgroundColor: Colors.red),


       body:SafeArea(
       child:Column(

           //crossAxisAlignment: CrossAxisAlignment.center,
       mainAxisAlignment: MainAxisAlignment.spaceAround,
         children:<Widget>[

         Text(

           'Do you want to logout?',
           //textAlign: TextAlign.center,
           style:TextStyle(

               fontFamily: 'Pacifico',
               fontSize:30.0,
               letterSpacing: 2.5,
               color:Colors.red,
               fontWeight:FontWeight.bold
           ),
         ),
            ElevatedButton(
             style: ElevatedButton.styleFrom(
               backgroundColor: Colors.red,

             ),
             onPressed: (){
               _auth.signOut();
               Navigator.canPop(context) ? Navigator.pop(context) : null;
               Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => signIn()));
             },
             child: const Text('Log out', style: TextStyle(
               fontSize: 25,
               fontWeight: FontWeight.w900,
               color: Colors.white,
             ),),

           )
       ])
       )
     );
   }
}




/*
body: ElevatedButton(
style: ElevatedButton.styleFrom(
backgroundColor: Colors.red,

),
onPressed: (){
_auth.signOut();
Navigator.canPop(context) ? Navigator.pop(context) : null;
Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => signIn()));
},
child: const Text('Log out', style: TextStyle(
fontSize: 25,
fontWeight: FontWeight.w900,
color: Colors.white,
),),

)*/