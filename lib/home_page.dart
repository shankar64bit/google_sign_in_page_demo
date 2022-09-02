import 'package:flutter/material.dart';
import 'package:signin_demo/api/google_signin_api.dart';
import 'package:signin_demo/learn_flutter.dart';

class Home_page extends StatelessWidget {
  const Home_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Center(
        //   child: ElevatedButton(
        //     onPressed: () {
        //       Navigator.of(context).push(MaterialPageRoute(
        //         builder: (BuildContext) {
        //           return Responsive_page();
        //         },
        //       ));
        //     },
        //     child: const Text('Learn Flutter'),
        //   ),
        // ),
        /////////////////////////////////////LOGIN///////////////////////
        Center(
          child: ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              primary: Colors.black,
              onPrimary: Colors.white,
              //minimumSize: Size(double.infinity, 50),
            ),
            icon: Icon(Icons.mail),
            onPressed: signIn,
            label: Text('Google sign-in'),
          ),
        ),
      ],
    );
  }
}

Future signIn() async {
  await GoogleSignInApi.login();
  return Responsive_page();

  //return Responsive_page();
}
