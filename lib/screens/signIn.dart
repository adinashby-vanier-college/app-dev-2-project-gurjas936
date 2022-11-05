import 'package:flutter/material.dart';

class signIn extends StatelessWidget {
  // const signIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: SizedBox(
          width: 350,
          height: 55,
          child: TextButton(
            style: TextButton.styleFrom(

              backgroundColor: Colors.white,
              // side: BorderSide(width: 3.0, color: Color(0xffe72041)),
            ),
            onPressed: () {

            },

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
      ),


    );
  }
}
