import 'package:flutter/material.dart';

class MacamPhobia extends StatelessWidget {
  const MacamPhobia({super.key});

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
                        image: AssetImage('assets/images/phobia.png'),
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
                        text: 'Macam-Macam Phobia : Ketakutan Yang Ekstrem',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold))),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(24),
                child: const Column(
                  children: [
                    Text(
                      'Fobia adalah ketakutan yang ekstrem dan tidak rasional terhadap objek, situasi, atau hal tertentu. Fobia dapat sangat mengganggu kehidupan sehari-hari seseorang dan membatasi aktivitas mereka jika tidak diatasi. Berbagai macam fobia yang berbeda dapat memengaruhi individu, seperti fobia terhadap ketinggian (acrophobia), fobia sosial (social phobia), fobia terhadap arachnids (arachnophobia), dan banyak lagi.',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Mengatasi fobia yang sangat ekstrem memerlukan perencanaan dan upaya yang hati-hati. Berikut adalah beberapa tips yang dapat membantu:',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                        '1.Pahami Fobia Anda: Langkah pertama adalah memahami fobia Anda dengan baik. Identifikasi objek atau situasi yang memicu ketakutan ekstrem. Mengetahui apa yang Anda hadapi adalah langkah awal yang penting.'),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                        '2. Terapi Eksposur: Terapi eksposur adalah pendekatan terapeutik yang efektif dalam mengatasi fobia. Ini melibatkan terpapar secara bertahap terhadap objek atau situasi yang Anda takuti, dengan dukungan terapis. Terapi ini dapat membantu Anda mengurangi ketakutan Anda seiring waktu.'),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                        '3.Pendekatan Bertahap: Ketika Anda siap, coba pendekatan bertahap untuk menghadapi fobia Anda. Ini berarti mulai dengan tingkat paparan yang rendah dan perlahan-lahan bekerja menuju tingkat yang lebih tinggi seiring waktu.'),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                        '4.Kognitif-Behavioral Therapy (CBT): Terapi kognitif-behavioral juga dapat membantu Anda mengubah pola pikir dan perilaku yang terkait dengan fobia Anda. Ini termasuk mengidentifikasi pemikiran negatif dan belajar cara mengatasi mereka.'),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                        '5.Cari Bantuan Profesional: Konsultasikan dengan seorang profesional kesehatan mental, seperti seorang psikolog atau psikiater yang memiliki pengalaman dalam mengatasi fobia. Terapis dapat membantu Anda mengembangkan rencana perawatan yang sesuai.'),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Ingatlah bahwa setiap individu berbeda, dan apa yang berhasil untuk satu orang mungkin tidak sama untuk yang lain. Kunci utamanya adalah mencari bantuan profesional dan memiliki tekad kuat untuk mengatasi fobia Anda. Jika Anda merasa terlalu terganggu oleh fobia Anda, segera cari bantuan dari seorang profesional kesehatan mental.',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
