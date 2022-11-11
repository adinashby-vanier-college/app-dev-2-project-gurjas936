import 'package:flutter/material.dart';
import 'package:blood_bank/screens/navBar.dart';

class signIn extends StatelessWidget {
  // const signIn({Key? key}) : super(key: key);
  final _textController = TextEditingController();

  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe72041),
      body: Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        // // crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                // margin: const EdgeInsets.only(right: 250.0),
                height: 100.00,
                width: 200.00,
                color: const Color(0xffe72041),
                child: CustomPaint(
                  foregroundPainter: LinePainter(),
                ),
              ),
            ],
          ),


          ////////////////////////////////////////////////Email input
          const SizedBox(height: 270.0), /////     create space above the fields
          Container(
            padding: const EdgeInsets.only(right: 20.0, left: 20.0, bottom: 10),
            child: TextField(
              controller: _textController,
              decoration: InputDecoration(
                  fillColor: const Color(0xffe72041),
                  hintText: "Email Id",
                  hintStyle: const TextStyle(color: Colors.white, fontFamily: 'Quicksand'),
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(width: 3, color: Colors.white),
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      _textController.clear();
                    },
                    icon: const Icon(Icons.clear, color: Colors.white,),
                  )),
            ),
          ),

          ///////////////////////////////////// Password Field

          Container(
            padding: const EdgeInsets.only(right: 20.0, left: 20.0, bottom: 10),
            child: TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                  fillColor: const Color(0xffe72041),
                  hintText: "Password",
                  hintStyle: const TextStyle(color: Colors.white, fontFamily: 'Quicksand'),
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(width: 3, color: Colors.white),
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      //obscureText: false;
                    },

                    icon: const Icon(Icons.remove_red_eye_outlined, color: Colors.white,),
                  ),
              ),
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
              onPressed: () {},
            ),
          ),

          SizedBox(
            width: 350,
            height: 55,
            child: TextButton(
              style: ElevatedButton.styleFrom(

                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                // side: BorderSide(width: 1.0, color: Color(0xffffffff)),
              ),
              onPressed: () {
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => NavBar()),
                );
              },

              child: const Text(
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
                      child: Image.asset('images/facebookicon.png')
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      width: 50,
                      height: 50,
                      child: Image.asset('images/instaicon.jpg')
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      width: 50,
                      height: 50,
                      child: Image.asset('images/twittericon.png')
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      width: 50,
                      height: 50,
                      child: Image.asset('images/whatsappicon.png')
                  ),
                ),
              ],
            ),
          ),


        ],
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
      ..strokeWidth = size.width * 1.4;

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
