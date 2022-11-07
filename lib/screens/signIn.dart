import 'package:flutter/material.dart';

class signIn extends StatelessWidget {
  // const signIn({Key? key}) : super(key: key);
  final _textController = TextEditingController();
  final passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe72041),
      body: Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        // // crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 250.0),
            height: 100.00,
            width: 200.00,
            color: Color(0xffe72041),
            child: CustomPaint(
              foregroundPainter: LinePainter(),
            ),
          ),
          SizedBox(height: 300.0),
          Container(
            padding: EdgeInsets.all(20.0),
            child: TextField(
              style: TextStyle(fontSize: 25,color:Colors.white),
              controller: _textController,
              decoration: InputDecoration(
                  //fillColor: Colors.cyanAccent,

                  hintText: "Email id",
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 10,
                      color:  Colors.white70,
                    ),
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      _textController.clear();
                    },
                    icon: Icon(Icons.clear),
                  )),
            ),
          ),


          Container(
            padding: EdgeInsets.all(20.0),
            child: TextField(
              style: TextStyle(fontSize: 25,color: Colors.white),
              obscureText: true,
              controller: passwordController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            alignment: Alignment.centerRight,
            child: TextButton( style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 25),
              foregroundColor: Colors.white,
            ),
              onPressed: () {
                //forgot password screen
              },


              child: const Text('Forgot Password!',),


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
      ..color = Color(0xffe63d59)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 1.4;

    final arc1 = Path();
    arc1.moveTo(size.width * 0, size.height * 0.4);
    arc1.arcToPoint(
      Offset(size.width * 0.4, size.height * 0),
      radius: Radius.circular(30),
      clockwise: false,
    );
    canvas.drawPath(arc1, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
