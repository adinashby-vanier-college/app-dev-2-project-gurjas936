import 'package:blood_bank/screens/signIn.dart';
import 'package:blood_bank/screens/users.dart';
import 'package:flutter/material.dart';
import 'package:blood_bank/screens/createAccount.dart';


class mainScreen extends StatefulWidget {
  const mainScreen({Key? key}) : super(key: key);

  @override
  State<mainScreen> createState() => _mainScreenState();
}

class _mainScreenState extends State<mainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xffe72041),
      body: Center(
        child: Column(
          //   mainAxisAlignment: MainAxisAlignment.center,
          // // crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 200,
                  width: 200,
                  alignment: Alignment.topLeft,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/quat.png'),
                      fit: BoxFit.contain,

                    ),
                  ),
                ),
              ],
            ),

            Center(
                child: Container(
                  height: 300.0,
                  width: 300.0,
                  margin: const EdgeInsets.only(top: 60),
                  decoration: const BoxDecoration(
                    // color: Colors.cyan,
                    image: DecorationImage(
                        image: AssetImage('images/logo-removebg-preview.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),


/////////////////////////////////////////////          SIGN IN BUTTON

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
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => signIn()),
                  );
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

            const SizedBox(
              height: 15,
            ),

////////////////////////////////////////       CREATE ACCOUNT BUTTON

            SizedBox(
              width: 350,
              height: 55,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: const Color(0xffe72041),
                  side: const BorderSide(width: 3.0, color: Colors.white),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => createAccount()),
                  );
                },
                child: const Text(
                  'Create Account',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.w900,
                      fontSize: 20),
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}

class LinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = const Color(0xffe63d59)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 1.6;

    final arc1 = Path();
    arc1.moveTo(size.width * 0, size.height * 0.4);
    arc1.arcToPoint(
      Offset(size.width * 0.4, size.height * 0),
      radius: const Radius.circular(30),
      clockwise: false,
    );
    canvas.drawPath(arc1, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
