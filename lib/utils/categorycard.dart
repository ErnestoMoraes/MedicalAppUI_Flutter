import 'package:flutter/material.dart';

class MyCategoryCard extends StatelessWidget {
  final String photo;
  final String legend;
  const MyCategoryCard({
    super.key,
    required this.photo,
    required this.legend,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(left: size.height * 0.03),
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: size.height * 0.035,
          horizontal: size.height * 0.02,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white70,
        ),
        child: Row(
          children: [
            Image.asset(
              photo,
              height: size.height * 0.04,
            ),
            SizedBox(width: size.width * 0.02),
            Text(
              legend,
              style: const TextStyle(fontSize: 15),
            )
          ],
        ),
      ),
    );
  }
}
