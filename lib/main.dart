//import 'dart:async';
//
import 'package:blood_bank/screens/mainScreen.dart';
//import 'package:blood_bank/screens/signIn.dart';
import 'package:flutter/material.dart';
//import 'package:blood_bank/screens/createAccount.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // bool _isLoading = true;
    // Timer(Duration(seconds: 2), () {
    //   setState(() {
    //     _isLoading = false;
    //   });
    // });
    return const MaterialApp(

      home: mainScreen(),
    );
  }
}

//       Scaffold(
//         backgroundColor: Color(0xffe72041),
//         body: Center(
//           child: Column(
//                //   mainAxisAlignment: MainAxisAlignment.center,
//                // // crossAxisAlignment: CrossAxisAlignment.center,
//                 children:<Widget>[
//                   Container(
//                     margin: EdgeInsets.only(right: 250.0),
//                     height: 100.00,
//                     width: 200.00,
//                     color: Color(0xffe72041),
//                     child: CustomPaint(
//                       foregroundPainter: LinePainter(),
//                     ),
//                   ),
//
//                   SizedBox(
//                     child: Container(
//                       height: 350.0,
//                       width: 350.0,
//                       margin: EdgeInsets.only(left:20, top: 60),
//                       decoration: BoxDecoration(
//                         // color: Colors.cyan,
//                           image:DecorationImage(
//                               image: AssetImage('images/logo-removebg-preview.png')
//                           )
//                       ),
//                     ),
//                   ),
//
//
// /////////////////////////////////////////////          SIGN IN BUTTON
//
//                   SizedBox(
//                       width: 350,
//                       height: 55,
//                       child: TextButton(
//                         style: ElevatedButton.styleFrom(
//
//                           backgroundColor: Colors.white,
//                           // side: BorderSide(width: 3.0, color: Color(0xffe72041)),
//                         ),
//                         onPressed: () {
//                           Navigator.push(context,
//                             MaterialPageRoute(builder: (context) => signIn()),
//                           );
//
//                         },
//
//                         child: Text(
//                           'Sign in',
//                           style: TextStyle(
//                               color: Color(0xffe72041),
//                               fontFamily: 'Quicksand',
//                               fontWeight: FontWeight.w900,
//                               fontSize: 20
//                           ),
//                         ),
//                       ),
//                     ),
//
//                   SizedBox(
//                     height: 15,
//                   ),
//
// ////////////////////////////////////////       CREATE ACCOUNT BUTTON
//
//                   SizedBox(
//                       width: 350,
//                       height: 55,
//                       child: TextButton(
//
//
//                         style: TextButton.styleFrom(
//                           backgroundColor: Color(0xffe72041),
//                           side: BorderSide(width: 3.0, color: Colors.white),
//                         ),
//                         onPressed: () { },
//
//                         child: Text(
//                           'Create Account',
//                           style: TextStyle(
//                               color: Colors.white,
//                               fontFamily: 'Quicksand',
//                               fontWeight: FontWeight.w900,
//                               fontSize: 20
//                           ),
//                         ),
//                       ),
//                     ),
//                 ],
//           ),
//         ),
//       ),
//     );
//   }
// }

//
// class LinePainter extends CustomPainter{
//   @override
//   void paint(Canvas canvas, Size size){
//     var paint = Paint()
//       ..color = Color(0xffe63d59)
//       ..style = PaintingStyle.stroke
//       ..strokeWidth = size.width*1.4;
//
//     final arc1 = Path();
//     arc1.moveTo(size.width*0, size.height*0.4);
//     arc1.arcToPoint(
//       Offset(size.width*0.4, size.height*0),
//       radius: Radius.circular(30),
//       clockwise: false,
//
//     );
//     canvas.drawPath(arc1, paint);
//
//
//   }
//
//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) => false;
//
// }
//
