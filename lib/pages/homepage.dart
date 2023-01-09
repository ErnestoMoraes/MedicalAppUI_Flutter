import 'package:flutter/material.dart';
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
                const MyAppBarBanner(
                  name: 'Ernesto M.',
                ),
                SizedBox(height: size.height * 0.01),
                MyCardBanner(
                  ontTap: () {},
                ),
                SizedBox(height: size.height * 0.03),
                const MySearch(),
                SizedBox(height: size.height * 0.03),
                SizedBox(
                  height: 80,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      const MyCategoryCard(
                        photo: 'lib/icons/tooth.png',
                        legend: 'Dentist',
                      ),
                      const MyCategoryCard(
                        photo: 'lib/icons/cirurgiao.png',
                        legend: 'Surgeon',
                      ),
                      const MyCategoryCard(
                        photo: 'lib/icons/drugs.png',
                        legend: 'Pharmacist',
                      ),
                      const MyCategoryCard(
                        photo: 'lib/icons/cirurgiao.png',
                        legend: 'Surgeon',
                      ),
                      const MyCategoryCard(
                        photo: 'lib/icons/drugs.png',
                        legend: 'Pharmacist',
                      ),
                      SizedBox(width: size.height * 0.03),
                    ],
                  ),
                ),
                SizedBox(height: size.height * 0.03),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.height * 0.03),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Doctor list',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Text(
                        'See all',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.grey[600]),
                      )
                    ],
                  ),
                ),
                SizedBox(height: size.height * 0.03),
                Expanded(
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      const DoctorCard(
                        doctorImage: 'lib/images/doctor1.jpg',
                        rating: '4.8',
                        doctorName: 'Ernesto',
                        doctorProfession: 'Therapist',
                      ),
                      const DoctorCard(
                        doctorImage: 'lib/images/doctor2.jpg',
                        rating: '4.8',
                        doctorName: 'Ernesto',
                        doctorProfession: 'Therapist',
                      ),
                      const DoctorCard(
                        doctorImage: 'lib/images/doctor3.jpg',
                        rating: '4.8',
                        doctorName: 'Ernesto',
                        doctorProfession: 'Therapist',
                      ),
                      const DoctorCard(
                        doctorImage: 'lib/images/doctor1.jpg',
                        rating: '4.8',
                        doctorName: 'Ernesto',
                        doctorProfession: 'Therapist',
                      ),
                      SizedBox(width: size.height * 0.03),
                    ],
                  ),
                ),
                SizedBox(height: size.height * 0.03),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
