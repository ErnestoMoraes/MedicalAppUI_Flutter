import 'package:flutter/material.dart';

class DoctorCard extends StatelessWidget {
  final String doctorImage;
  final String rating;
  final String doctorName;
  final String doctorProfession;

  const DoctorCard({
    super.key,
    required this.doctorImage,
    required this.rating,
    required this.doctorName,
    required this.doctorProfession,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(
        left: size.height * 0.03,
      ),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: size.height * 0.04,
          vertical: size.height * 0.01,
        ),
        decoration: BoxDecoration(
          color: Colors.white70,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset(
                doctorImage,
                height: size.height * 0.14,
                width: size.height * 0.14,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: size.height * 0.01),
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.yellow[600],
                ),
                Text(
                  rating,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: size.height * 0.01),
            Text(
              doctorName,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: size.height * 0.005),
            Text(
              doctorProfession,
              style: const TextStyle(fontSize: 14),
            )
          ],
        ),
      ),
    );
  }
}
