import 'package:flutter/material.dart';

class MyAppBarBanner extends StatelessWidget {
  final String name;
  final Function()? onTap;
  const MyAppBarBanner({super.key, required this.name, this.onTap});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: size.height * 0.03,
        vertical: size.height * 0.01,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Bem Vindo',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[500],
                  fontSize: 14,
                ),
              ),
              Text(
                name,
                style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54),
              )
            ],
          ),
          GestureDetector(
            onTap: onTap,
            child: Container(
              padding: EdgeInsets.all(size.height * 0.013),
              decoration: BoxDecoration(
                color: Colors.grey[500],
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Icon(
                Icons.person,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
