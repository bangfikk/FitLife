import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class JournalDetail extends StatelessWidget {
  final Map<String, dynamic> jurnalData;
  const JournalDetail({super.key, required this.jurnalData});

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
                height: 250,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/gangguan_jiwa.png'),
                        fit: BoxFit.cover)),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 35),
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
                      Row(
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
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(24),
                child: Text(
                  jurnalData["judul"],
                  style: const TextStyle(
                      fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              Html(
                data: jurnalData["isi"],
              )
            ],
          ),
        ),
      ),
    );
  }
}
