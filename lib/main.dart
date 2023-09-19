import 'package:firebase_core/firebase_core.dart';

import 'package:fitlife/buttom/main_bottom.dart';
import 'package:fitlife/content/Kecanduan_Game.dart';
import 'package:fitlife/content/Kesehatan_Mental.dart';
import 'package:fitlife/menu/Home.dart';
import 'package:fitlife/menu/Journal.dart';
import 'package:fitlife/menu/Meditasi.dart';
import 'package:fitlife/menu/Profile.dart';

import 'package:fitlife/splashscreen/Login.dart';
import 'package:fitlife/splashscreen/Register.dart';
import 'package:fitlife/splashscreen/splash_screen.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyBK6qu2arrw1CPnbOZO4jg3HurTPJlPeHA",
          appId: "1:271161443317:android:182ea24abcb04e100456bc",
          messagingSenderId: "271161443317",
          projectId: "login-register-fitlife-1b476"));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Poppins'),
      debugShowCheckedModeBanner: false,
      title: 'FitLife',
      initialRoute: '/main_bottom',
      routes: {
        '/splashscreen': (context) => SplaschScreen(),
        '/login': (context) => Login(),
        '/register': (context) => Register(),
        '/home': (context) => Home(),
        '/journal': (context) => Journal(),
        '/meditasi': (context) => Meditasi(),
        '/profile': (context) => Profile(),
        '/kesehatan_mental': (context) => Kesehatan_Mental(),
        '/kecanduan_game': (context) => Kecanduan_Game(),
        '/main_bottom': (context) => MainBottom(),
      },
    );
  }
}

// import 'package:fitlife/Home.dart';
// import 'package:fitlife/Journal.dart';
// import 'package:fitlife/Meditasi.dart';
// import 'package:fitlife/Profile.dart';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: MyBottomNavigationBar(),
//     );
//   }
// }

// class MyBottomNavigationBar extends StatefulWidget {
//   @override
//   _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
// }

// class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
//   int _currentIndex = 0;

//   final List<Widget> _pages = [
//     // Add your pages here
//     Home(),
//     Journal(),
//     Meditasi(),
//     Profile(),
//   ];

//   void _onItemTapped(int index) {
//     setState(() {
//       _currentIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: _pages[_currentIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         selectedItemColor: Colors.blue,
//         unselectedItemColor: Colors.grey,
//         type: BottomNavigationBarType.fixed,
//         currentIndex: _currentIndex,
//         onTap: _onItemTapped,
//         items: [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Beranda',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.note),
//             label: 'Journal',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.bungalow),
//             label: 'Meditasi',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person),
//             label: 'Profile',
//           ),
//         ],
//       ),
//     );
//   }
// }