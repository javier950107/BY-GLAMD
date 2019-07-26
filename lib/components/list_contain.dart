import 'package:flutter/material.dart';

class ListContain extends StatelessWidget {
  ListContain({this.title, this.icon});

  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 17.0,
        ),
      ),
      onTap: () {
        // Update the state of the app.
        // ...
      },
    );
  }
}
