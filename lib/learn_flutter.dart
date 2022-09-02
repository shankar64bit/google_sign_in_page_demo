import 'package:flutter/material.dart';
import 'package:signin_demo/home_page.dart';

class Responsive_page extends StatefulWidget {
  const Responsive_page({super.key});

  @override
  State<Responsive_page> createState() => _Responsive_pageState();
}

class _Responsive_pageState extends State<Responsive_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Responsive page'),
      ),
      // ignore: prefer_const_constructors
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: const Text(
            'Login successfull',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                backgroundColor: Colors.black),
          ),
        ),
      ),
    );
    7;
  }
}

// class LearnFlutter extends StatefulWidget {
//   const LearnFlutter({super.key});

//   @override
//   State<LearnFlutter> createState() => _LearnFlutterState();
// }

// class _LearnFlutterState extends State<LearnFlutter> {
//   bool isSwitch = false;
//   bool isCheck = false;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('LearnFlutter'),
//         automaticallyImplyLeading: false,
//         leading: IconButton(
//             onPressed: () {
//               Navigator.of(context).pop();
//             },
//             icon: Icon(Icons.arrow_back_ios)),
//         actions: [
//           IconButton(
//               onPressed: () {
//                 debugPrint('Actions triggerd');
//               },
//               icon: Icon(Icons.info_outline))
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Image.asset('assets/space.jpg'),
//             Divider(
//               color: Colors.black,
//               height: 20,
//             ),
//             Container(
//               margin: EdgeInsets.all(10),
//               padding: EdgeInsets.all(10),
//               color: Colors.redAccent,
//               width: double.infinity,
//               child: Center(
//                 child: Text(
//                   'I love space',
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 20,
//                   ),
//                 ),
//               ),
//             ),
//             ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                   primary: isSwitch ? Colors.green : Colors.black,
//                 ),
//                 onPressed: () {
//                   debugPrint('Elevated Button');
//                 },
//                 child: Text('Elevated button text')),
//             OutlinedButton(
//                 onPressed: () {
//                   debugPrint('Elevated Button');
//                 },
//                 child: Text('Elevated button text')),
//             TextButton(
//                 onPressed: () {
//                   debugPrint('Elevated Button');
//                 },
//                 child: Text('Elevated button text')),
//             GestureDetector(
//               behavior: HitTestBehavior.opaque,
//               onDoubleTap: () {
//                 debugPrint('Gesture triggerd');
//               },
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   Icon(Icons.local_fire_department, color: Colors.red),
//                   Text('Row widget'),
//                   Icon(Icons.local_fire_department, color: Colors.red),
//                 ],
//               ),
//             ),
//             Switch(
//                 value: isSwitch,
//                 onChanged: (bool newBool) {
//                   setState(() {
//                     isSwitch = newBool;
//                   });
//                 }),
//             Checkbox(
//                 value: isCheck,
//                 onChanged: (bool? newcheck) {
//                   setState(() {
//                     isCheck = newcheck!;
//                   });
//                 }),
//             Image.network(
//                 'https://cdn.pixabay.com/photo/2017/08/30/01/05/milky-way-2695569__480.jpg')
//           ],
//         ),
//       ),
//     );
//   }
// }
