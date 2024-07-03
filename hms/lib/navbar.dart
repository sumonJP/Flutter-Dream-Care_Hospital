import 'package:flutter/material.dart';
import 'package:hms/page1.dart'; // Ensure this import matches your project structure

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Md Syful Islam Sumon'),
            accountEmail: Text('syful.islam3412@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset('images/mypic.png'), // Ensure this image is available
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.pinkAccent,
              image: DecorationImage(
                image: AssetImage('images/back.jpeg'), // Ensure this image is available
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.file_upload),
            title: Text('Upload File'),
            onTap: () => print('Upload tapped'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () => print('Home tapped'),
          ),
          Divider(),

          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () => print('Settings tapped'),
          ),
          Divider(),

          ListTile(
            leading: Icon(Icons.contacts),
            title: Text('Contact'),
            onTap: () => print('Contact tapped'),
          ),
          Divider(),

          ListTile(
            leading: Icon(Icons.email),
            title: Text('Email'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Page1()), // Ensure this page exists
              );
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.shape_line_outlined),
            title: Text('Share'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Page1()), // Ensure this page exists
              );
            },
          ),
          Divider(),
        ],
      ),
    );
  }
}
