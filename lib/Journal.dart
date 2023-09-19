import 'package:flutter/material.dart';

class Journal extends StatefulWidget {
  const Journal({super.key});

  @override
  State<Journal> createState() => _JournalState();
}

class _JournalState extends State<Journal> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 3,
                decoration: const ShapeDecoration(
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
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 64),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Row(
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
                      const SizedBox(
                        height: 24,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: 270,
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
                                        prefixIcon: const Icon(Icons.search)),
                                  ),
                                ),
                                Container(
                                  width: 50,
                                  height: 50,
                                  decoration: ShapeDecoration(
                                    color: const Color(0xFF003FE9),
                                    shape: RoundedRectangleBorder(
                                      side: const BorderSide(
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
                                        decoration: const BoxDecoration(
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
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                child: Column(
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width / 2.5,
                            height: 210,
                            decoration: ShapeDecoration(
                                image: const DecorationImage(
                                    image: AssetImage(
                                        'assets/images/metalhealt.png'),
                                    fit: BoxFit.cover),
                                shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                        width: 1, color: Color(0xFFE5E7EB)),
                                    borderRadius: BorderRadius.circular(24))),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 60,
                                      width: 155.2,
                                      decoration: const BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(22),
                                            bottomRight: Radius.circular(22)),
                                      ),
                                      child: Container(
                                        padding: const EdgeInsets.all(7),
                                        child: const Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text.rich(TextSpan(children: [
                                                  TextSpan(
                                                      text: '5-10 Menit\n',
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xFF757575),
                                                          fontFamily:
                                                              'Poppins',
                                                          fontSize: 8,
                                                          fontWeight:
                                                              FontWeight
                                                                  .bold)),
                                                  TextSpan(
                                                      text:
                                                          'Kesehatan Mental:\n',
                                                      style: TextStyle(
                                                          fontFamily:
                                                              'Poppins',
                                                          fontSize: 9,
                                                          fontWeight:
                                                              FontWeight
                                                                  .bold)),
                                                  TextSpan(
                                                      text:
                                                          'Pentingnya Merawat Diri',
                                                      style: TextStyle(
                                                          fontFamily:
                                                              'Poppins',
                                                          fontSize: 9,
                                                          fontWeight:
                                                              FontWeight
                                                                  .bold)),
                                                ]))
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
                          Container(
                            width: MediaQuery.of(context).size.width / 2.5,
                            height: 210,
                            decoration: ShapeDecoration(
                                color: Colors.grey,
                                image: const DecorationImage(
                                    image: AssetImage(
                                        'assets/images/kecanduangame.png'),
                                    fit: BoxFit.cover),
                                shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                        width: 1, color: Color(0xFFE5E7EB)),
                                    borderRadius: BorderRadius.circular(24))),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 60,
                                      width: 155.2,
                                      decoration: const BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(22),
                                            bottomRight: Radius.circular(22)),
                                      ),
                                      child: Container(
                                        padding: const EdgeInsets.all(7),
                                        child: const Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text.rich(TextSpan(children: [
                                                  TextSpan(
                                                      text: '5-10 Menit\n',
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xFF757575),
                                                          fontFamily:
                                                              'Poppins',
                                                          fontSize: 8,
                                                          fontWeight:
                                                              FontWeight
                                                                  .bold)),
                                                  TextSpan(
                                                      text:
                                                          'Kesehatan Mental:\n',
                                                      style: TextStyle(
                                                          fontFamily:
                                                              'Poppins',
                                                          fontSize: 9,
                                                          fontWeight:
                                                              FontWeight
                                                                  .bold)),
                                                  TextSpan(
                                                      text:
                                                          'Pentingnya Merawat Diri',
                                                      style: TextStyle(
                                                          fontFamily:
                                                              'Poppins',
                                                          fontSize: 9,
                                                          fontWeight:
                                                              FontWeight
                                                                  .bold)),
                                                ]))
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
                        ])
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
