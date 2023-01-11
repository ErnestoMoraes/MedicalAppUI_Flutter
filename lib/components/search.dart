import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:medicalappui/pages/homepage.dart';

class MySearch extends StatelessWidget {
  final controller;
  const MySearch({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.height * 0.03),
      child: Container(
        padding: EdgeInsets.all(size.height * 0.01),
        decoration: BoxDecoration(
          color: Colors.white70,
          borderRadius: BorderRadius.circular(12),
        ),
        child: TextField(
          controller: controller,
          onChanged: (value) => print('${controller.text}'),
          decoration: InputDecoration(
              prefix: SizedBox(
                width: size.height * 0.02,
              ),
              suffixIcon: const Icon(Icons.search_rounded),
              border: InputBorder.none,
              hintText: 'Digite aqui sua dúvida'),
        ),
      ),
    );
  }
}
