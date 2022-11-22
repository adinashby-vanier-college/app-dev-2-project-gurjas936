import 'package:flutter/material.dart';

class Users extends StatelessWidget {
  const Users({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          UserAccountsDrawerHeader(
          accountName: Text('abc'),
          accountEmail: Text('abc@gmail.com'),
          currentAccountPicture: CircleAvatar(
          child: ClipOval(
          child: Image.network(
          'https://cdn.pixabay.com/photo/2017/02/25/22/04/user-icon-2098873_960_720.png',
          fit: BoxFit.cover,
          width: 90,
          height: 90,
          ),
          ),
          ),
          decoration: BoxDecoration(
          color: Color(0xffe72041),
        //  image: DecorationImage(
          //fit: BoxFit.fill,
         // image: NetworkImage('https://media.istockphoto.com/id/1252380604/photo/note-paper-with-blood-donation-concept-on-red-background.jpg?b=1&s=170667a&w=0&k=20&c=HJpGKpSF3ULIBECqzb6vr2zT5dx-dhbGmbOoI5XsRxo=')
        //  ),
          ),
          ),
        ]
    ));
  }
}
