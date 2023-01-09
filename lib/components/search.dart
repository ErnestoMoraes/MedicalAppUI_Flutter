import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MySearch extends StatelessWidget {
  const MySearch({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.height * 0.03),
      child: Container(
        padding: EdgeInsets.all(size.height * 0.01),
        decoration: BoxDecoration(
          color: Colors.deepPurple[100],
          borderRadius: BorderRadius.circular(12),
        ),
        child: const TextField(
          decoration: InputDecoration(
              prefixIcon: Icon(Icons.search_rounded),
              border: InputBorder.none,
              hintText: 'How can we help you?'),
        ),
      ),
    );
  }
}
