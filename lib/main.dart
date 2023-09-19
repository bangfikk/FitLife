import 'package:firebase_core/firebase_core.dart';
import 'package:fitlife/Home.dart';
import 'package:fitlife/Journal.dart';
import 'package:fitlife/Journal_1.dart';
import 'package:fitlife/Login.dart';
import 'package:fitlife/Meditasi.dart';
import 'package:fitlife/Profile.dart';
import 'package:fitlife/Register.dart';
import 'package:fitlife/buttom/main_bottom.dart';
import 'package:fitlife/splash_screen.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyBK6qu2arrw1CPnbOZO4jg3HurTPJlPeHA",
          appId: "1:271161443317:android:182ea24abcb04e100456bc",
          messagingSenderId: "271161443317",
          projectId: "login-register-fitlife-1b476"));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Poppins'),
      debugShowCheckedModeBanner: false,
      title: 'FitLife',
      initialRoute: '/splashscreen',
      routes: {
        '/splashscreen': (context) => const SplaschScreen(),
        '/login': (context) => const Login(),
        '/register': (context) => const Register(),
        '/home': (context) => const Home(),
        '/journal': (context) => const Journal(),
        '/meditasi': (context) => const Meditasi(),
        '/profile': (context) => const Profile(),
        '/journal_1': (context) => const JournalSatu(),
        '/main_bottom': (context) => const MainBottom()
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
