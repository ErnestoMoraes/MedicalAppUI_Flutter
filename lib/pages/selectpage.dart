import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:medicalappui/pages/chatpage.dart';
import 'package:medicalappui/pages/faqpage.dart';
import 'package:medicalappui/pages/homepage.dart';
import 'package:medicalappui/pages/settingspage.dart';

class SelectPage extends StatefulWidget {
  const SelectPage({super.key});

  @override
  State<SelectPage> createState() => _SelectPageState();
}

class _SelectPageState extends State<SelectPage> {
  int _selectIndex = 0;
  final List<Widget> _tabs = const [
    HomePage(),
    ChatPage(),
    FaqPage(),
    SettingsPage()
  ];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            height: size.height,
            child: _tabs[_selectIndex],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.grey[300],
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: GNav(
            onTabChange: (newIndex) => setState(() {
              _selectIndex = newIndex;
            }),
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
