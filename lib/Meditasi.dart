import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Meditasi extends StatefulWidget {
  const Meditasi({super.key});

  @override
  State<Meditasi> createState() => _MeditasiState();
}

class _MeditasiState extends State<Meditasi> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
            child: Column(
          children: [
            Container(
              width: 360,
              height: 263,
              decoration: ShapeDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0.00, -1.00),
                  end: Alignment(0, 1),
                  colors: [Color(0xFF03184E), Color(0xFF0233B1)],
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
              ),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 64),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Journal',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              letterSpacing: 1),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 250,
                                height: 50,
                                child: TextField(
                                  decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          borderSide: BorderSide.none),
                                      hintText: "Serch",
                                      prefixIcon: Icon(Icons.search)),
                                ),
                              ),
                              Container(
                                width: 50,
                                height: 50,
                                decoration: ShapeDecoration(
                                  color: Color(0xFF003FE9),
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        width: 0.50, color: Colors.white),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 30,
                                      height: 30,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/images/pengingat.png'),
                                              fit: BoxFit.fill)),
                                    )
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 155,
                          height: 220,
                          decoration: ShapeDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/game.png'),
                                  fit: BoxFit.fill),
                              shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                      width: 1, color: Color(0xFFE5E7EB)),
                                  borderRadius: BorderRadius.circular(10))),
                          child: Container(
                            padding: EdgeInsetsDirectional.all(12),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      width: 80,
                                      height: 30,
                                      decoration: ShapeDecoration(
                                          color: Colors.white,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(7))),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "MULAI",
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 15,
                                                fontWeight: FontWeight.w600),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 155,
                          height: 220,
                          decoration: ShapeDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/game.png'),
                                  fit: BoxFit.fill),
                              shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                      width: 1, color: Color(0xFFE5E7EB)),
                                  borderRadius: BorderRadius.circular(10))),
                          child: Container(
                            padding: EdgeInsetsDirectional.all(12),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      width: 80,
                                      height: 30,
                                      decoration: ShapeDecoration(
                                          color: Colors.white,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(7))),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "MULAI",
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 15,
                                                fontWeight: FontWeight.w600),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ]),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 340,
                    height: 82,
                    decoration: ShapeDecoration(
                        color: Colors.black,
                        image: DecorationImage(
                            image: AssetImage(''), fit: BoxFit.fill),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Semua Meditasi',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 15,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 150,
                              height: 210,
                              decoration: ShapeDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage('assets/images/game.png'),
                                      fit: BoxFit.fill),
                                  shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          width: 1, color: Color(0xFFE5E7EB)),
                                      borderRadius: BorderRadius.circular(24))),
                              child: Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          height: 57,
                                          width: 148,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(22),
                                                bottomRight:
                                                    Radius.circular(22)),
                                          ),
                                          child: Container(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 10, vertical: 10),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      '5-10 MIN',
                                                      style: TextStyle(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 10,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    )
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Container(
                              width: 150,
                              height: 210,
                              decoration: ShapeDecoration(
                                  color: Colors.cyan,
                                  image: DecorationImage(
                                      image: AssetImage(''), fit: BoxFit.fill),
                                  shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          width: 1, color: Color(0xFFE5E7EB)),
                                      borderRadius: BorderRadius.circular(24))),
                              child: Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          height: 57,
                                          width: 148,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(22),
                                                bottomRight:
                                                    Radius.circular(22)),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        )),
        bottomNavigationBar: Container(
          padding: EdgeInsets.all(10),
          child: GNav(
            tabBorderRadius: 15,
            activeColor: Colors.white,
            color: Colors.grey,
            tabBackgroundColor: Color(0xFF0B43D8),
            gap: 8,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            onTabChange: (index) {
              print(index);
            },
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Beranda',
              ),
              GButton(
                icon: Icons.search_rounded,
                text: 'Journal',
              ),
              GButton(
                icon: Icons.home,
                text: 'Meditasi',
              ),
              GButton(
                icon: Icons.home,
                text: 'Akun',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
