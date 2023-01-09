import 'package:flutter/material.dart';

class MyCardBanner extends StatelessWidget {
  final Function()? ontTap;
  const MyCardBanner({super.key, this.ontTap});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.height * 0.03),
      child: Container(
        padding: EdgeInsets.all(size.height * 0.02),
        decoration: BoxDecoration(
            color: Colors.pink[100], borderRadius: BorderRadius.circular(12)),
        child: Row(
          children: [
            Container(
              height: 100,
              width: 100,
              color: Colors.deepPurple[200],
            ),
            SizedBox(width: size.height * 0.02),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'How do you feel?',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: size.height * 0.015),
                  const Text(
                    'Fill out your medical card right now',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: size.height * 0.015),
                  Container(
                    padding: EdgeInsets.all(size.height * 0.015),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple[300],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: GestureDetector(
                        onTap: ontTap,
                        child: const Text(
                          'Get Started',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
