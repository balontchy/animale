
import 'package:flutter/material.dart';
import '../store/Store.dart';
import 'animale_data.dart';

class Animale extends StatefulWidget {
  const Animale({Key? key}) : super(key: key);

  @override
  State<Animale> createState() => _AnimaleState();
}

class _AnimaleState extends State<Animale> {
  @override
  Widget build(BuildContext context) {
    return
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          Store(),
          AnimaleData()
        ],
      );
  }
}
