import 'package:fitlife/Home.dart';
import 'package:fitlife/Journal.dart';
import 'package:fitlife/Journal_1.dart';
import 'package:fitlife/Login.dart';
import 'package:fitlife/Meditasi.dart';
import 'package:fitlife/Profile.dart';
import 'package:fitlife/Register.dart';
import 'package:fitlife/main/main_bottom.dart';
import 'package:fitlife/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Poppins'),
      debugShowCheckedModeBanner: false,
      title: 'FitLife',
      initialRoute: '/splashscreen',
      routes: {
        '/splashscreen': (context) => SplaschScreen(),
        '/login': (context) => Login(),
        '/register': (context) => Register(),
        '/home': (context) => Home(),
        '/journal': (context) => Journal(),
        '/meditasi': (context) => Meditasi(),
        '/profile': (context) => Profile(),
        '/journal_1': (context) => Journal_1(),
        '/main_bottom': (context) => MainBottom()
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
