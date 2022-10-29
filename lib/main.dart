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
        backgroundColor: Colors.red,
        body:SafeArea(
            child:Column(

              mainAxisAlignment: MainAxisAlignment.center,
             // crossAxisAlignment: CrossAxisAlignment.center,
              children:<Widget>[
                SizedBox(
                  height:20.0,
                  width:20.0,
                  child:Divider(
                    color:Colors.red.shade100,
                  ),
                ),
                Card(
                  margin:EdgeInsets.symmetric(vertical:10.0,horizontal:25.0),
                  child:ListTile(

                    title:Text(
                      'SIGN IN',
                      style:TextStyle(
                        color:Colors.red,
                        fontFamily: 'Regular',
                        fontSize: 20.0,

                      ),
                    ),
                  ),
                ),
                Card(
                  margin:EdgeInsets.symmetric(vertical:10.0,horizontal:25.0),
                  child:ListTile(


                    title: Text(
                      'CREATE ACCOUNT',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Regular',
                        fontSize: 20.0,
                      ),
                    ),


                  ),
                )
              ],
            )),
      ),
    );
  }
}

