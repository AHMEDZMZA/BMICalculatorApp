import 'package:flutter/material.dart';

class SlidersScreen extends StatefulWidget {
  const SlidersScreen({super.key});

  @override
  State<SlidersScreen> createState() => _SlidersState();
}

class _SlidersState extends State<SlidersScreen> {
  double radius = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Slider")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
              color: Colors.pink,
              borderRadius: BorderRadius.circular(radius),
            ),
          ),
          const SizedBox(height: 40),
          Slider(
            value: radius,
            max: 150,
            min: 0,
            onChanged: (double value) {
              setState(() {
                radius = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
