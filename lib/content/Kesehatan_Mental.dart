import 'package:flutter/material.dart';

class Kesehatan_Mental extends StatelessWidget {
  const Kesehatan_Mental({super.key});

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
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/metalhealt.png'),
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
                              icon: Icon(Icons.arrow_back_ios,
                                  color: Colors.black)),
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
                        text: 'Kesehatan Mental : Pentingnya Merawat Diri',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold)))
                  ],
                ),
              ),
              Container(
                height: 235,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/metalhealt2.png'))),
              ),
              Container(
                padding: EdgeInsets.all(24),
                child: Column(
                  children: [
                    Text(
                      'kesehatan mental adalah aspek penting dari kesehatan secara keseluruhan.terkadang,kita terlalu fokus pada kesehatan fisik kita dan melupakan betapa pentingnya merawat kesehatan mental kita.kesehatan mental yang baik dapat memberikan kita kualitas hidup yang lebih baik,mempngaruhi kemampuan kita dalam mengatasi strees,dan meningkatkan hubungan sosial kita',
                      style: TextStyle(fontFamily: 'Poppins', fontSize: 16),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                child: Column(
                  children: [
                    Text(
                        'tips yang dapat membantu Anda menjaga kesehatan mental Anda:\n',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                    Text(
                      '1. Jaga Pola Tidur yang Teratur: Tidur yang cukup dan berkualitas sangat penting bagi kesehatan mental. Usahakan untuk tidur 7-9 jam setiap malam dan pertahankan jadwal tidur yang konsisten.',
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      child: Text(
                          '2. Makan Sehat: Pola makan yang seimbang dan kaya gizi dapat memengaruhi suasana hati dan energi Anda. Konsumsi makanan yang mengandung nutrisi penting, seperti vitamin, mineral, serat, dan protein.'),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      child: Text(
                          '3. Berolahraga secara Teratur: Aktivitas fisik dapat melepaskan endorfin, zat kimia yang dapat meningkatkan suasana hati. Lakukan olahraga yang Anda nikmati secara teratur, baik itu berjalan kaki, berlari, yoga, atau olahraga lainnya.'),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      child: Text(
                          '4. Praktikkan Teknik Relaksasi: Teknik-teknik seperti meditasi, pernapasan dalam, dan yoga dapat membantu meredakan stres, meningkatkan fokus, dan mengurangi kecemasan.'),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      child: Text(
                          '5. Hindari Konsumsi Alkohol dan Narkoba Berlebihan: Penggunaan alkohol dan narkoba yang berlebihan dapat merusak kesehatan mental. Lebih baik mencari cara-cara sehat untuk mengatasi stres dan kesulitan.'),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      child: Text(
                          '6. Atur Batasan Waktu Layar: Terlalu banyak waktu di depan layar (telepon, komputer, TV) dapat memengaruhi tidur dan kesejahteraan mental. Tetapkan batasan waktu untuk penggunaan layar dan pastikan Anda memiliki waktu untuk beraktivitas di luar ruangan dan bersosialisasi.'),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      child: Text(
                          '7. Pertahankan Hubungan Sosial yang Positif: Hubungan sosial yang baik dapat memberikan dukungan emosional dan mengurangi perasaan isolasi. Jaga komunikasi dengan keluarga, teman, dan orang-orang yang Anda cintai.'),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      child: Text(
                          '8. Cari Kegiatan yang Anda Nikmati: Luangkan waktu untuk melakukan aktivitas yang Anda sukai dan yang membuat Anda merasa bahagia. Ini bisa berupa hobi, seni, musik, membaca, atau apa pun yang membuat Anda merasa bersemangat.'),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      child: Text(
                          '9. Mencari Bantuan Profesional: Jika Anda merasa kesulitan mengatasi masalah atau perasaan yang mengganggu, jangan ragu untuk mencari bantuan dari profesional kesehatan mental, seperti psikolog atau psikiater.'),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      child: Text(
                          '10. adwalkan Istirahat dan Waktu untuk Diri Sendiri: Alihkan waktu untuk beristirahat dan merenung. Dalam kehidupan yang sibuk, penting untuk memberi diri sendiri waktu untuk merenung dan mengisi ulang energi.'),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      child: Text(
                          '11. Tetapkan Tujuan yang Realistis Menetapkan tujuan yang realistis dan mencapai mereka dapat memberi Anda rasa pencapaian dan meningkatkan harga diri.'),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      child: Text(
                          '12. Latih Cara Mengatasi Stres: Pelajari keterampilan mengatasi stres, seperti manajemen waktu, pengaturan prioritas, dan mengatasi pikiran negatif.'),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                        'Ingatlah bahwa kesehatan mental adalah perjalanan yang berkelanjutan, dan setiap orang mungkin memiliki cara yang berbeda untuk merawatnya. Penting untuk mengenali apa yang bekerja dengan baik bagi Anda dan berkomitmen untuk menjaga kesehatan mental Anda sepanjang hidup.',
                        style: TextStyle(fontWeight: FontWeight.bold)),
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
