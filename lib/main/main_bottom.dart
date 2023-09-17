import 'package:fitlife/Home.dart';
import 'package:fitlife/Journal.dart';
import 'package:fitlife/Meditasi.dart';
import 'package:fitlife/Profile.dart';
import 'package:flutter/material.dart';

class MainBottom extends StatefulWidget {
  const MainBottom({super.key});

  @override
  State<MainBottom> createState() => _MainBottomState();
}

class _MainBottomState extends State<MainBottom> {
  int pageIndex = 0;
  List<Widget> pageList = <Widget>[Home(), Journal(), Meditasi(), Profile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageList[pageIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        currentIndex: pageIndex,
        onTap: (value) {
          setState(() {
            pageIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.note),
            label: 'Journal',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bungalow),
            label: 'Meditasi',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
