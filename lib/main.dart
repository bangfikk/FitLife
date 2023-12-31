import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:fitlife/buttom/main_bottom.dart';
import 'package:fitlife/content/Kecanduan_game.dart';
import 'package:fitlife/content/Kesehatan_Mental.dart';
import 'package:fitlife/content/gangguan_jiwa.dart';
import 'package:fitlife/content/macam_phobia.dart';
import 'package:fitlife/menu/home_screen.dart';
import 'package:fitlife/menu/journal_screen.dart';
import 'package:fitlife/menu/meditasi_screen.dart';
import 'package:fitlife/menu/profile_screen.dart';
import 'package:fitlife/splashscreen/Login.dart';
import 'package:fitlife/splashscreen/Register.dart';
import 'package:fitlife/splashscreen/splash_screen.dart';
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
      home: const AuthChecker(), // Use AuthChecker as the initial route
      routes: {
        '/splashscreen': (context) => const SplaschScreen(),
        '/login': (context) => const Login(),
        '/register': (context) => const Register(),
        '/home': (context) => const Home(),
        '/journal': (context) => const Journal(),
        '/meditasi': (context) => const Meditasi(),
        '/profile': (context) => const Profile(),
        '/main_bottom': (context) => const MainBottom(),
        '/kesehatan_mental': (context) => const KesehatanMental(),
        '/kecanduan_game': (context) => const KecanduanGame(),
        '/gangguan_jiwa': (context) => const GangguanJiwa(),
        '/macam_phobia': (context) => const MacamPhobia()
      },
    );
  }
}

class AuthChecker extends StatelessWidget {
  const AuthChecker({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          // Firebase is still initializing, return a loading screen if needed
          return const CircularProgressIndicator();
        } else if (snapshot.hasData && snapshot.data != null) {
          // User is already logged in, navigate to MainBottom
          return const MainBottom();
        } else {
          // User is not logged in, navigate to Login
          return const Login();
        }
      },
    );
  }
}
