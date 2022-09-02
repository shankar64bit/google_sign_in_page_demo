import 'package:flutter/material.dart';
import 'package:signin_demo/home_page.dart';

int itemCount = 20;

class Profile_page extends StatelessWidget {
  const Profile_page({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: itemCount,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
            title: Text('Contact ${(index + 1)}'),
            leading: Icon(
              Icons.person,
            ),
            trailing: Icon(Icons.select_all),
            onTap: () {
              debugPrint('contact ${(index + 1)} is selected');
            });
      },
    );
  }
}
