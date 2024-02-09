import 'package:flutter/material.dart';
import 'package:myapp8/components/itemnumber.dart';
import 'package:myapp8/models/number.dart';

class Familynumberspage extends StatelessWidget {
  const Familynumberspage({super.key});

  final List<Number> numbers = const [
    Number(
        sound: 'sounds/family_members/father.wav',
        image: 'assets/images/family_members/family_father.png',
        jpName: 'chichioya',
        enName: 'Father'),
    Number(
        sound: 'sounds/family_members/daughter.wav',
        image: 'assets/images/family_members/family_daughter.png',
        jpName: 'Musume',
        enName: 'Daughter'),
    Number(
        sound: 'sounds/family_members/son.wav',
        image: 'assets/images/family_members/family_son.png',
        jpName: 'Musuko',
        enName: 'Son'),
    Number(
        sound: 'sounds/family_members/mother.wav',
        image: 'assets/images/family_members/family_mother.png',
        jpName: 'Hahaoya',
        enName: 'Mother'),
    Number(
        sound: 'sounds/family_members/grandfather.wav',
        image: 'assets/images/family_members/family_grandfather.png',
        jpName: 'Ojīsan',
        enName: 'Grandfather'),
    Number(
        sound: 'sounds/family_members/grandmother.wav',
        image: 'assets/images/family_members/family_grandmother.png',
        jpName: 'Sobo',
        enName: 'Grand mother'),
    Number(
        sound: 'sounds/family_members/olderbrother.wav',
        image: 'assets/images/family_members/family_older_brother.png',
        jpName: 'Nīsan',
        enName: 'older brother'),
    Number(
        sound: 'sounds/family_members/oldersister.wav',
        image: 'assets/images/family_members/family_older_sister.png',
        jpName: 'Onēsan',
        enName: 'older sister'),
    Number(
        sound: 'sounds/family_members/youngerbrother.wav',
        image: 'assets/images/family_members/family_younger_brother.png',
        jpName: 'Otōto',
        enName: 'younger brother'),
    Number(
        sound: 'sounds/family_members/youngersister.wav',
        image: 'assets/images/family_members/family_younger_sister.png',
        jpName: 'Imōto',
        enName: 'younger sister'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Family Numbers'),
          backgroundColor: const Color.fromARGB(255, 82, 211, 228)),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return Itemnumber(
            number: numbers[index],
            color: const Color.fromARGB(255, 82, 211, 228),
          );
        },
      ),
    );
  }
}
