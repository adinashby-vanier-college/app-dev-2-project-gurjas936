import 'package:flutter/material.dart';
import 'package:blood_bank/screens/editProfile.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Drawer(
        child: ListView(
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
              color: Colors.red,
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage('https://media.istockphoto.com/id/1252380604/photo/note-paper-with-blood-donation-concept-on-red-background.jpg?b=1&s=170667a&w=0&k=20&c=HJpGKpSF3ULIBECqzb6vr2zT5dx-dhbGmbOoI5XsRxo=')
              ),
            ),
    ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Edit Profile'),
              onTap: ()
                {
                  Navigator.pop(context);
                  Navigator.push(context, new MaterialPageRoute(builder: (context)=>new EditProfilePage()));

                },
            ),
            ListTile(
              leading: Icon(Icons.history),
              title: Text('History'),
              onTap: () => null,
            ),
            ListTile(
              leading: Icon(Icons.feedback),
              title: Text('Feedback'),
              onTap: () => null,
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () => null,
            ),

        ],
        ),


    );
  }
}