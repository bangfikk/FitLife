import 'package:fitlife/menu/Home.dart';
import 'package:fitlife/menu/Journal.dart';
import 'package:fitlife/menu/Meditasi.dart';
import 'package:fitlife/menu/Profile.dart';
import 'package:flutter/material.dart';

class MainBottom extends StatefulWidget {
  const MainBottom({super.key});

  @override
  State<MainBottom> createState() => _MainBottomState();
}

class _MainBottomState extends State<MainBottom> {
  int pageIndex = 0;
  Color selectedItemColor = Colors.blue; // Warna terpilih
  Color unselectedItemColor = Colors.grey; // Warna yang tidak terpilih

  List<Widget> pageList = <Widget>[Home(), Journal(), Meditasi(), Profile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageList[pageIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: selectedItemColor,
        unselectedItemColor: unselectedItemColor,
        type: BottomNavigationBarType.fixed,
        currentIndex: pageIndex,
        onTap: (value) {
          setState(() {
            pageIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: pageIndex == 0
                ? Image.asset('assets/images/bottom_home.png',
                    color: Colors.blue, width: 30, height: 30)
                : Image.asset('assets/images/bottom_home.png',
                    color: Colors.grey, width: 30, height: 30),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: pageIndex == 1
                ? Image.asset('assets/images/bottom_journal.png',
                    color: Colors.blue, width: 30, height: 30)
                : Image.asset('assets/images/bottom_journal.png',
                    color: Colors.grey, width: 30, height: 30),
            label: 'Journal',
          ),
          BottomNavigationBarItem(
            icon: pageIndex == 2
                ? Image.asset('assets/images/bottom_meditasi.png',
                    color: Colors.blue, width: 30, height: 30)
                : Image.asset('assets/images/bottom_meditasi.png',
                    color: Colors.grey, width: 30, height: 30),
            label: 'Meditasi',
          ),
          BottomNavigationBarItem(
            icon: pageIndex == 3
                ? Image.asset('assets/images/bottom_profile.png',
                    color: Colors.blue, width: 30, height: 30)
                : Image.asset('assets/images/bottom_profile.png',
                    color: Colors.grey, width: 30, height: 30),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
