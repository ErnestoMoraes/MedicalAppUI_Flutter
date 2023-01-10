import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:medicalappui/components/appbar.banner.dart';
import 'package:medicalappui/components/card.getstarted.dart';
import 'package:medicalappui/components/search.dart';
import 'package:medicalappui/utils/categorycard.dart';
import 'package:medicalappui/utils/doctorcard.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            height: size.height,
            child: Column(
              children: [
                MyAppBarBanner(
                  name: 'Ernesto Moraes',
                  onTap: () {
                    // ignore: avoid_print
                    print('Perfil');
                  },
                ),
                SizedBox(height: size.height * 0.01),
                MyCardBanner(
                  ontTap: () {
                    print('Get Started');
                  },
                ),
                SizedBox(height: size.height * 0.02),
                MySearch(controller: search),
                SizedBox(height: size.height * 0.02),
                SizedBox(
                  height: 80,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      const MyCategoryCard(
                        photo: 'lib/icons/odonto.png',
                        legend: 'Odontologia',
                      ),
                      const MyCategoryCard(
                        photo: 'lib/icons/ortopedia.png',
                        legend: 'Ortopedia',
                      ),
                      const MyCategoryCard(
                        photo: 'lib/icons/drugs.png',
                        legend: 'Farmácia',
                      ),
                      SizedBox(width: size.height * 0.03),
                    ],
                  ),
                ),
                SizedBox(height: size.height * 0.02),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.height * 0.03),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Doações realizadas',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        'Ver tudo',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.grey[600]),
                      )
                    ],
                  ),
                ),
                SizedBox(height: size.height * 0.02),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(bottom: size.height * 0.06),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        const DoctorCard(
                          doctorImage: 'lib/images/doctor1.jpg',
                          rating: '4.8',
                          doctorName: 'Valdo Santiago',
                          doctorProfession: 'Doador',
                        ),
                        const DoctorCard(
                          doctorImage: 'lib/images/doctor4.jpg',
                          rating: '3.9',
                          doctorName: 'Felipo Franco',
                          doctorProfession: 'Receptor',
                        ),
                        const DoctorCard(
                          doctorImage: 'lib/images/doctor5.jpg',
                          rating: '4.1',
                          doctorName: 'Júlia Naco',
                          doctorProfession: 'Doador',
                        ),
                        const DoctorCard(
                          doctorImage: 'lib/images/doctor3.jpg',
                          rating: '4.2',
                          doctorName: 'Bruno Queiroz',
                          doctorProfession: 'Receptor',
                        ),
                        SizedBox(width: size.height * 0.03),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.grey[300],
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: GNav(
            backgroundColor: Colors.grey[300]!,
            color: Colors.grey[800],
            activeColor: Colors.white,
            tabBackgroundColor: Colors.deepPurple.shade400,
            padding: const EdgeInsets.all(10),
            gap: 10,
            tabs: const [
              GButton(icon: Icons.home, text: 'Home'),
              GButton(icon: Icons.chat, text: 'Chat'),
              GButton(icon: Icons.search, text: 'FAQ'),
              GButton(icon: Icons.settings, text: 'Configurações'),
            ],
          ),
        ),
      ),
    );
  }
}
