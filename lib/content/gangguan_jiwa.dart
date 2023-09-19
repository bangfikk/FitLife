import 'package:flutter/material.dart';

class GangguanJiwa extends StatelessWidget {
  const GangguanJiwa({super.key});

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
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(24),
                child: const Column(
                  children: [
                    Text.rich(TextSpan(
                      text: 'Gangguan Jiwa : Apakah Warisan Orangtua ?',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ))
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(24),
                child: const Column(
                  children: [
                    Text(
                      'Gangguan jiwa, seperti kecemasan, depresi, bipolar, dan lainnya, tidak selalu merupakan hasil langsung dari warisan orang tua dalam arti genetik. Namun, faktor genetik dapat memainkan peran dalam peningkatan risiko seseorang untuk mengembangkan gangguan jiwa. Selain itu, lingkungan di mana seseorang tumbuh dan faktor psikososial juga memiliki dampak besar pada perkembangan gangguan jiwa.',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                        'Tanggapan dari perspektif aplikasi meditasi terhadap gangguan jiwa biasanya fokus pada pengelolaan stres, meningkatkan kesejahteraan mental, dan membantu individu mengatasi gejala gangguan jiwa. Berikut beberapa cara meditasi dapat membantu:'),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                        '1. Meningkatkan Kesadaran Diri: Meditasi membantu meningkatkan kesadaran diri, memungkinkan individu untuk lebih memahami perasaan dan pemikiran mereka, yang merupakan langkah penting dalam mengatasi gangguan jiwa.'),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                        '2. Meditasi Rutin: Aplikasi meditasi seringkali menyarankan untuk memiliki rutinitas meditasi harian. Meditasi secara teratur dapat membantu mengurangi stres, meningkatkan kesadaran diri, dan mengurangi gejala gangguan jiwa.'),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                        '3. Makanan Sehat dan Gizi: Aplikasi meditasi sering memberikan informasi tentang pentingnya makanan sehat dan gizi dalam menjaga kesehatan mental. Nutrisi yang baik dapat memengaruhi mood dan energi.'),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                        '4. Hubungan Sosial yang Sehat: Aplikasi meditasi dapat mengingatkan pentingnya menjaga hubungan sosial yang sehat dan terhubung dengan teman dan keluarga.'),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                        '5. Mengatasi Pikiran Negatif: Aplikasi meditasi sering memberikan teknik untuk mengatasi pemikiran negatif dan kognisi yang merugikan.'),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Setiap individu berbeda, jadi penting untuk mencari saran dan praktik yang sesuai dengan kebutuhan dan preferensi pribadi Anda. Jika Anda merasa kesulitan mengatasi gangguan jiwa, sebaiknya konsultasikan dengan seorang profesional kesehatan mental untuk bantuan yang tepat.',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
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
