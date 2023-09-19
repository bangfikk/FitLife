// ignore_for_file: file_names, avoid_unnecessary_containers

import 'package:flutter/material.dart';

// ignore: camel_case_types
class KecanduanGame extends StatelessWidget {
  const KecanduanGame({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(fontFamily: 'Poppins'),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: SingleChildScrollView(
                child: Column(children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 250,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/kecanduan_game.png'),
                    fit: BoxFit.cover)),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 35),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(Icons.arrow_back_ios,
                              color: Colors.white)),
                    ],
                  ),
                  Container(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 100,
                        height: 30,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Journal",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      )
                    ],
                  ))
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(24),
            child: const Column(
              children: [
                Text.rich(TextSpan(
                    text: 'Kecanduan Game : Ketika Hobi Menjadi Ketergantungan',
                    style:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.bold)))
              ],
            ),
          ),
          Container(
            height: 235,
            width: MediaQuery.of(context).size.width / 1.1,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/kecanduangame2.png'))),
          ),
        ]))));
  }
}
