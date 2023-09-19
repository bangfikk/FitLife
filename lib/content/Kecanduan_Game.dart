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
          Container(
            padding: const EdgeInsets.all(24),
            child: const Column(
              children: [
                Text(
                  'Kecanduan game adalah kondisi di mana seseorang mengalami ketidakmampuan untuk mengontrol penggunaan permainan video atau komputer hingga mengganggu fungsi sosial, pribadi, dan akademis mereka. Kondisi ini juga dikenal sebagai "gaming disorder" dan telah diakui oleh Organisasi Kesehatan Dunia (WHO) sebagai gangguan mental.',
                  style: TextStyle(fontSize: 16),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
            child: const Column(
              children: [
                Text('Berikut adalah beberapa tanda dan gejala kecanduan game:',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 15,
                ),
                Text(
                    '1. Kehilangan Kendali: Orang yang kecanduan game sulit menghentikan atau mengendalikan waktu yang dihabiskan untuk bermain game.'),
                SizedBox(
                  height: 15,
                ),
                Text(
                    '2. Prioritas yang Salah: Mereka sering kali menempatkan permainan di atas segala sesuatu yang lain dalam hidup mereka, termasuk pekerjaan, sekolah, dan hubungan sosial.'),
                SizedBox(
                  height: 15,
                ),
                Text(
                    '3. Peningkatan Durasi Bermain: Mereka mungkin menghabiskan lebih banyak waktu bermain game dari sebelumnya untuk mencapai tingkat kepuasan yang sama.'),
                SizedBox(
                  height: 15,
                ),
                Text(
                    '4. Pengaruh Negatif Terhadap Kesehatan Mental: Kecanduan game dapat menyebabkan masalah kesehatan mental seperti depresi dan kecemasan.'),
                SizedBox(
                  height: 15,
                ),
                Text(
                    '5. Gejala Fisik: Kecanduan game dapat menyebabkan gejala fisik seperti mata kering, sakit kepala, dan masalah tidur.'),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
            child: const Column(
              children: [
                Text('Tips untuk Mengatasi Kecanduan Game:',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 15,
                ),
                Text(
                    '1. Gantilah dengan Aktivitas Positif: Cari hobi atau aktivitas yang lebih sehat dan bermanfaat untuk menggantikan waktu yang sebelumnya digunakan untuk bermain game.'),
                SizedBox(
                  height: 15,
                ),
                Text(
                    '2. Rehabilitasi Khusus: Dalam kasus kecanduan game yang parah, mungkin diperlukan rehabilitasi khusus yang menawarkan perawatan intensif.'),
                SizedBox(
                  height: 15,
                ),
                Text(
                    '3. Atur Waktu Bermain: Tetapkan batasan waktu harian atau mingguan untuk bermain game dan patuhi dengan ketat. Gunakan alarm sebagai pengingat.'),
                SizedBox(
                  height: 15,
                ),
                Text(
                    '4. Terapi Profesional: Pertimbangkan untuk mencari bantuan dari seorang profesional kesehatan mental yang memiliki pengalaman dalam mengobati kecanduan game.'),
                SizedBox(
                  height: 15,
                ),
                Text(
                    '5. Hapus atau Batasi Akses: Hapus atau batasi akses ke game yang pemicu kecanduan. Buat akses ke game semakin sulit.'),
                SizedBox(
                  height: 15,
                ),
                Text(
                    'Kecanduan game adalah masalah serius yang dapat memengaruhi kesejahteraan fisik dan mental seseorang. Jika Anda atau seseorang yang Anda kenal mengalami kecanduan game yang parah, segera cari bantuan profesional.',
                    style: TextStyle(fontWeight: FontWeight.bold))
              ],
            ),
          )
        ]))));
  }
}
