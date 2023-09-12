import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 64),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Akun\n',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 40,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        TextSpan(
                            text: 'Pusat Informasi Dan pengaturan Akun',
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.5),
                              fontSize: 13,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                            )),
                      ],
                    ),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/settings.png'),
                            fit: BoxFit.fill)),
                  )
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                  width: 340,
                  height: 100,
                  decoration: ShapeDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(0.00, -1.00),
                      end: Alignment(0, 1),
                      colors: [Color(0xFF031951), Color(0xFF0332AC)],
                    ),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 0.50, color: Color(0xFFE5E7EB)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
