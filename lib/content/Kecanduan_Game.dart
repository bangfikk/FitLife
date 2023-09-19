import 'package:flutter/material.dart';

class Kecanduan_Game extends StatelessWidget {
  const Kecanduan_Game({super.key});

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
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/kecanduan_game.png'),
                    fit: BoxFit.cover)),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 35),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon:
                              Icon(Icons.arrow_back_ios, color: Colors.white)),
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
                        child: Row(
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
            padding: EdgeInsets.all(24),
            child: Column(
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
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/kecanduangame2.png'))),
          ),
        ]))));
  }
}
