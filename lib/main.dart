import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}): super(key:key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home:Scaffold(
        backgroundColor: Color(0xffe72041),
        body: Center(
          child: Column(
               //   mainAxisAlignment: MainAxisAlignment.center,
               // // crossAxisAlignment: CrossAxisAlignment.center,
                children:<Widget>[
                  Container(
                    margin: EdgeInsets.only(right: 250.0),
                    height: 100.00,
                    width: 200.00,
                    color: Color(0xffe72041),
                    child: CustomPaint(
                      foregroundPainter: LinePainter(),
                    ),
                  ),

                  SizedBox(
                    child: Container(
                      height: 350.0,
                      width: 350.0,
                      margin: EdgeInsets.only(left:20, top: 60),
                      decoration: BoxDecoration(
                        // color: Colors.cyan,
                          image:DecorationImage(
                              image: AssetImage('images/logo-removebg-preview.png')
                          )
                      ),
                    ),
                  ),

                  // SizedBox(
                  //   height:10.0,
                  //   width:20.0,
                  // ),

/////////////////////////////////////////////          SIGN IN BUTTON

                  SizedBox(
                      width: 350,
                      height: 55,
                      child: TextButton(
                        style: TextButton.styleFrom(

                          backgroundColor: Colors.white,
                          // side: BorderSide(width: 3.0, color: Color(0xffe72041)),
                        ),
                        onPressed: () { },

                        child: Text(
                          'Sign in',
                          style: TextStyle(
                              color: Color(0xffe72041),
                              fontFamily: 'Quicksand',
                              fontWeight: FontWeight.w900,
                              fontSize: 20
                          ),
                        ),
                      ),
                    ),

                  SizedBox(
                    height: 15,
                  ),

////////////////////////////////////////       CREATE ACCOUNT BUTTON

                  SizedBox(
                      width: 350,
                      height: 55,
                      child: TextButton(


                        style: TextButton.styleFrom(
                          backgroundColor: Color(0xffe72041),
                          side: BorderSide(width: 3.0, color: Colors.white),
                        ),
                        onPressed: () { },

                        child: Text(
                          'Create Account',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Quicksand',
                              fontWeight: FontWeight.w900,
                              fontSize: 20
                          ),
                        ),
                      ),
                    ),
                ],
          ),
        ),
      ),
    );
  }
}


class LinePainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size){
    var paint = Paint()
      ..color = Color(0xffe63d59)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 250;

    final arc1 = Path();
    arc1.moveTo(size.width*0, size.height*0.4);
    arc1.arcToPoint(
      Offset(size.width*0.4, size.height*0),
      radius: Radius.circular(30),
      clockwise: false,

    );
    canvas.drawPath(arc1, paint);


  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;

}

