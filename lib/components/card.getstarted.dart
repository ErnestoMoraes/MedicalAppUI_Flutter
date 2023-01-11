import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

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
          color: Colors.white70,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Container(
              height: size.height * 0.15,
              width: size.height * 0.15,
              child: Lottie.asset('lib/animations/medical.json'),
            ),
            SizedBox(width: size.height * 0.02),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Gostaria de fazer uma doação?',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: size.height * 0.015),
                  const Text(
                    'Rápido, fácil e pratico',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: size.height * 0.015),
                  Container(
                    padding: EdgeInsets.all(size.height * 0.015),
                    decoration: BoxDecoration(
                      color: Colors.blue[500],
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: GestureDetector(
                        onTap: ontTap,
                        child: const Text(
                          'Começar',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
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
