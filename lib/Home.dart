import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          child: Container(
            width: 360,
            height: 390,
            decoration: ShapeDecoration(
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
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 70,
                        height: 70,
                        decoration: ShapeDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/profile.png'),
                            fit: BoxFit.fill,
                          ),
                          shape: OvalBorder(
                            side: BorderSide(width: 0.50, color: Colors.white),
                          ),
                        ),
                      ),
                      Container()
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text.rich(
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
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Bagaimana perasaanmu hari ini ?',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              decoration: ShapeDecoration(
                                  color: Color(0xFF0B43D8),
                                  shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          width: 0.50, color: Colors.white),
                                      borderRadius: BorderRadius.circular(14))),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/images/1.png'),
                                            fit: BoxFit.fill)),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 27,
                            ),
                            Container(
                              width: 50,
                              height: 50,
                              decoration: ShapeDecoration(
                                  color: Color(0xFF0B43D8),
                                  shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          width: 0.50, color: Colors.white),
                                      borderRadius: BorderRadius.circular(14))),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/images/2.png'),
                                            fit: BoxFit.fill)),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 27,
                            ),
                            Container(
                              width: 50,
                              height: 50,
                              decoration: ShapeDecoration(
                                  color: Color(0xFF0B43D8),
                                  shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          width: 0.50, color: Colors.white),
                                      borderRadius: BorderRadius.circular(14))),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/images/3.png'),
                                            fit: BoxFit.fill)),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 27,
                            ),
                            Container(
                              width: 50,
                              height: 50,
                              decoration: ShapeDecoration(
                                  color: Color(0xFF0B43D8),
                                  shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          width: 0.50, color: Colors.white),
                                      borderRadius: BorderRadius.circular(14))),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/images/4.png'),
                                            fit: BoxFit.fill)),
                                  ),
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text.rich(TextSpan(
                                text: 'Bahagia',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500))),
                            SizedBox(
                              width: 32,
                            ),
                            Text.rich(TextSpan(
                                text: 'Normal',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500))),
                            SizedBox(
                              width: 39,
                            ),
                            Text.rich(TextSpan(
                                text: 'Sedih',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500))),
                            SizedBox(
                              width: 44,
                            ),
                            Text.rich(TextSpan(
                                text: 'Marah',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500))),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
