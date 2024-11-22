import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
        title: Text(
          'Profile',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          CircleAvatar(
            radius: 50,
            backgroundColor: Colors.grey[200],
            child: Icon(Icons.person, size: 50, color: Colors.grey[700]),
          ),
          SizedBox(height: 15),
          Text(
            'John Doe',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),
          Text(
            'johndoe@gmail.com',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 14,
            ),
          ),
          SizedBox(height: 30),
          ListTile(
            leading: Icon(Icons.person_outline),
            title: Text('Profile'),
            trailing: Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {},
          ),
          Divider(height: 1, thickness: 0.5, color: Colors.grey[300]),
          ListTile(
            leading: Icon(Icons.bookmark_outline),
            title: Text('Bookmarked'),
            trailing: Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {},
          ),
          Divider(height: 1, thickness: 0.5, color: Colors.grey[300]),
          ListTile(
            leading: Icon(Icons.history),
            title: Text('Previous Trips'),
            trailing: Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {},
          ),
          Divider(height: 1, thickness: 0.5, color: Colors.grey[300]),
        ],
      ),
    );
  }
}

