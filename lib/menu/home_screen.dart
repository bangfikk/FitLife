import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Poppins'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 1.78,
                decoration: const ShapeDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(0.00, -1.00),
                    end: Alignment(0, 1),
                    colors: [Color(0xFF03184F), Color(0xFF0334B1)],
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                  ),
                ),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 70,
                            height: 70,
                            decoration: const ShapeDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/profile.png'),
                                fit: BoxFit.fill,
                              ),
                              shape: OvalBorder(
                                side: BorderSide(
                                    width: 0.50, color: Colors.white),
                              ),
                            ),
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: Container(
                                    width: 40,
                                    height: 40,
                                    decoration: const ShapeDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/images/love.png'),
                                            fit: BoxFit.fill),
                                        shape: RoundedRectangleBorder()),
                                  ),
                                )
                              ])
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Selamat Pagi,\n',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 35,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                                text: 'Fikri!',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 35,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                )),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'Bagaimana perasaanmu hari ini ?',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                                actions: [
                                  TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: const Text('Close'))
                                ],
                                title: const Text(
                                    'Maaf Aplikasi Sedang Dalam Pengembangan'),
                                contentPadding: const EdgeInsets.all(10)),
                          );
                        },
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      width: 55,
                                      height: 55,
                                      decoration: ShapeDecoration(
                                          color: const Color(0xFF0B43D8),
                                          shape: RoundedRectangleBorder(
                                              side: const BorderSide(
                                                  width: 0.50,
                                                  color: Colors.white),
                                              borderRadius:
                                                  BorderRadius.circular(14))),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 35,
                                            height: 35,
                                            decoration: const BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/images/icon_bahagia.png'),
                                                  fit: BoxFit.fill),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    const Text(
                                      'Bahagia',
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.white),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  width: 27,
                                ),
                                Column(
                                  children: [
                                    Container(
                                      width: 55,
                                      height: 55,
                                      decoration: ShapeDecoration(
                                          color: const Color(0xFF0B43D8),
                                          shape: RoundedRectangleBorder(
                                              side: const BorderSide(
                                                  width: 0.50,
                                                  color: Colors.white),
                                              borderRadius:
                                                  BorderRadius.circular(14))),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 35,
                                            height: 35,
                                            decoration: const BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        'assets/images/icon_normal.png'),
                                                    fit: BoxFit.fill)),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    const Text(
                                      'Normal',
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.white),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  width: 27,
                                ),
                                Column(
                                  children: [
                                    Container(
                                      width: 55,
                                      height: 55,
                                      decoration: ShapeDecoration(
                                          color: const Color(0xFF0B43D8),
                                          shape: RoundedRectangleBorder(
                                              side: const BorderSide(
                                                  width: 0.50,
                                                  color: Colors.white),
                                              borderRadius:
                                                  BorderRadius.circular(14))),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 35,
                                            height: 35,
                                            decoration: const BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        'assets/images/icon_sedih.png'),
                                                    fit: BoxFit.fill)),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    const Text(
                                      'Sedih',
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.white),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  width: 27,
                                ),
                                Column(
                                  children: [
                                    Container(
                                      width: 55,
                                      height: 55,
                                      decoration: ShapeDecoration(
                                          color: const Color(0xFF0B43D8),
                                          shape: RoundedRectangleBorder(
                                              side: const BorderSide(
                                                  width: 0.50,
                                                  color: Colors.white),
                                              borderRadius:
                                                  BorderRadius.circular(14))),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 35,
                                            height: 35,
                                            decoration: const BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        'assets/images/icon_marah.png'),
                                                    fit: BoxFit.fill)),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    const Text(
                                      'Marah',
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.white),
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: const Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Rekomendasi Meditasi',
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Poppins',
                              fontSize: 15,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                                actions: [
                                  TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: const Text('Close'))
                                ],
                                title: const Text(
                                    'Maaf Aplikasi Sedang Dalam Pengembangan'),
                                contentPadding: const EdgeInsets.all(10)),
                          );
                        },
                        child: Container(
                            width: 250,
                            height: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              color: const Color.fromARGB(255, 146, 146, 146),
                              image: const DecorationImage(
                                  image: AssetImage('assets/images/1.png'),
                                  fit: BoxFit.cover),
                            ),
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 15),
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    '',
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                            )),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      InkWell(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                                actions: [
                                  TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: const Text('Close'))
                                ],
                                title: const Text(
                                    'Maaf Aplikasi Sedang Dalam Pengembangan'),
                                contentPadding: const EdgeInsets.all(10)),
                          );
                        },
                        child: Container(
                            width: 250,
                            height: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              color: const Color.fromARGB(255, 146, 146, 146),
                              image: const DecorationImage(
                                  image: AssetImage('assets/images/2.png'),
                                  fit: BoxFit.cover),
                            ),
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 15),
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    '',
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                            )),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      InkWell(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                                actions: [
                                  TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: const Text('Close'))
                                ],
                                title: const Text(
                                    'Maaf Aplikasi Sedang Dalam Pengembangan'),
                                contentPadding: const EdgeInsets.all(10)),
                          );
                        },
                        child: Container(
                            width: 250,
                            height: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              color: const Color.fromARGB(255, 146, 146, 146),
                              image: const DecorationImage(
                                  image: AssetImage('assets/images/3.png'),
                                  fit: BoxFit.cover),
                            ),
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 15),
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    '',
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                            )),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                                actions: [
                                  TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: const Text('Close'))
                                ],
                                title: const Text(
                                    'Maaf Aplikasi Sedang Dalam Pengembangan'),
                                contentPadding: const EdgeInsets.all(10)),
                          );
                        },
                        child: Container(
                            width: 250,
                            height: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              color: const Color.fromARGB(255, 146, 146, 146),
                              image: const DecorationImage(
                                  image: AssetImage('assets/images/4.png'),
                                  fit: BoxFit.cover),
                            ),
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 15),
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    '',
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                            )),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      InkWell(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                                actions: [
                                  TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: const Text('Close'))
                                ],
                                title: const Text(
                                    'Maaf Aplikasi Sedang Dalam Pengembangan'),
                                contentPadding: const EdgeInsets.all(10)),
                          );
                        },
                        child: Container(
                            width: 250,
                            height: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              color: const Color.fromARGB(255, 146, 146, 146),
                              image: const DecorationImage(
                                  image: AssetImage('assets/images/5.png'),
                                  fit: BoxFit.cover),
                            ),
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 15),
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    '',
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                            )),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                ),
                child: const Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Rekomendasi Meditasi (Journal)',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 15,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/kesehatan_mental');
                          },
                          child: Container(
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
                                      width: 142,
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
                                                          color:
                                                              Color(0xFF757575),
                                                          fontFamily: 'Poppins',
                                                          fontSize: 10,
                                                          fontWeight:
                                                              FontWeight.bold)),
                                                  TextSpan(
                                                      text:
                                                          'Kesehatan Mental:\n',
                                                      style: TextStyle(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 10,
                                                          fontWeight:
                                                              FontWeight.bold)),
                                                  TextSpan(
                                                      text:
                                                          'Pentingnya Merawat Diri',
                                                      style: TextStyle(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 10,
                                                          fontWeight:
                                                              FontWeight.bold)),
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
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/kecanduan_game');
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width / 2.5,
                            height: 210,
                            decoration: ShapeDecoration(
                                color: Colors.grey,
                                image: const DecorationImage(
                                    image: AssetImage(
                                        'assets/images/kecanduan_game.png'),
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
                                      width: 142,
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
                                                          color:
                                                              Color(0xFF757575),
                                                          fontFamily: 'Poppins',
                                                          fontSize: 10,
                                                          fontWeight:
                                                              FontWeight.bold)),
                                                  TextSpan(
                                                      text:
                                                          'Kecanduan Game: Ketika\n',
                                                      style: TextStyle(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 10,
                                                          fontWeight:
                                                              FontWeight.bold)),
                                                  TextSpan(
                                                      text:
                                                          'Hobi Menjadi Ketergantungan',
                                                      style: TextStyle(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 10,
                                                          fontWeight:
                                                              FontWeight.bold)),
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
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/gangguan_jiwa');
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width / 2.5,
                            height: 210,
                            decoration: ShapeDecoration(
                                image: const DecorationImage(
                                    image: AssetImage(
                                        'assets/images/gangguan_jiwa.png'),
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
                                      width: 142,
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
                                                          color:
                                                              Color(0xFF757575),
                                                          fontFamily: 'Poppins',
                                                          fontSize: 10,
                                                          fontWeight:
                                                              FontWeight.bold)),
                                                  TextSpan(
                                                      text:
                                                          'Gangguan Mental:\n',
                                                      style: TextStyle(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 10,
                                                          fontWeight:
                                                              FontWeight.bold)),
                                                  TextSpan(
                                                      text:
                                                          'Apakah Warisan Orangtua ?',
                                                      style: TextStyle(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 10,
                                                          fontWeight:
                                                              FontWeight.bold)),
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
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/macam_phobia');
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width / 2.5,
                            height: 210,
                            decoration: ShapeDecoration(
                                color: Colors.grey,
                                image: const DecorationImage(
                                    image:
                                        AssetImage('assets/images/phobia.png'),
                                    fit: BoxFit.fill),
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
                                      width: 142,
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
                                                Text.rich(
                                                  TextSpan(
                                                    children: [
                                                      TextSpan(
                                                          text: '5-10 Menit\n',
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xFF757575),
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontSize: 10,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold)),
                                                      TextSpan(
                                                          text:
                                                              'Macam -Macam Phobia:\n',
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontSize: 10,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold)),
                                                      TextSpan(
                                                          text:
                                                              'Ketakutan yang Ekstrem',
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontSize: 10,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold)),
                                                    ],
                                                  ),
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
                        )
                      ],
                    )
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
