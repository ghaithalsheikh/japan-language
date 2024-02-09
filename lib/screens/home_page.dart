import 'package:flutter/material.dart';
import 'package:myapp8/components/category.dart';
import 'package:myapp8/screens/colors_page.dart';
import 'package:myapp8/screens/familynumbers_page.dart';
import 'package:myapp8/screens/numbers_page.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyanAccent[700],
      appBar: AppBar(
        title: const Text('Toku'),
      ),
      body: Column(
        children: [
          Category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const Numberspage();
              }));
            },
            text: 'Numbers',
            color: Colors.cyan,
          ),
          Category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const Familynumberspage();
              }));
            },
            text: 'Family Numbers',
            color: const Color.fromARGB(255, 82, 211, 228),
          ),
          Category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const Colorspage();
              }));
            },
            text: 'Colors',
            color: const Color.fromARGB(255, 125, 224, 237),
          ),
        ],
      ),
    );
  }
}
