import 'package:flutter/material.dart';
import 'package:myapp8/components/itemnumber.dart';
import 'package:myapp8/models/number.dart';

class Colorspage extends StatelessWidget {
  const Colorspage({super.key});

  final List<Number> numbers = const [
    Number(
        sound: 'sounds/colors/black.wav',
        image: 'assets/images/colors/color_black.png',
        jpName: 'Kuro',
        enName: 'black'),
    Number(
        sound: 'sounds/colors/brown.wav',
        image: 'assets/images/colors/color_brown.png',
        jpName: 'Chairo',
        enName: 'brown'),
    Number(
        sound: 'sounds/colors/dusty_yellow.wav',
        image: 'assets/images/colors/color_dusty_yellow.png',
        jpName: 'Hokori ppoi kiiro',
        enName: 'dusty yellow'),
    Number(
        sound: 'sounds/colors/gray.wav',
        image: 'assets/images/colors/color_gray.png',
        jpName: 'Gurē',
        enName: 'gray'),
    Number(
        sound: 'sounds/colors/green.wav',
        image: 'assets/images/colors/color_green.png',
        jpName: 'Midori',
        enName: 'green'),
    Number(
        sound: 'sounds/colors/red.wav',
        image: 'assets/images/colors/color_red.png',
        jpName: 'Aka',
        enName: 'red'),
    Number(
        sound: 'sounds/colors/white.wav',
        image: 'assets/images/colors/color_white.png',
        jpName: 'Shiroi',
        enName: 'white'),
    Number(
        sound: 'sounds/colors/yellow.wav',
        image: 'assets/images/colors/yellow.png',
        jpName: 'Kiiro',
        enName: 'yellow'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Colors Numbers'),
          backgroundColor: const Color.fromARGB(255, 125, 224, 237)),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return Itemnumber(
            number: numbers[index],
            color: const Color.fromARGB(255, 125, 224, 237),
          );
        },
      ),
    );
  }
}
