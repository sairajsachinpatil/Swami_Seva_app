import 'package:flutter/material.dart';

class MalJapScreen extends StatefulWidget {
  const MalJapScreen({super.key});

  @override
  State<MalJapScreen> createState() => _MalJapScreenState();
}

class _MalJapScreenState extends State<MalJapScreen> {
  int japCount = 0;

  @override
  Widget build(BuildContext context) {
    int malaCount = japCount ~/ 108; // 1 माळ = 108 जप

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text('माळ जप'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'जप संख्या: $japCount',
            style: const TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
          ),
          Text(
            'माळा: $malaCount',
            style: const TextStyle(fontSize: 30, color: Colors.brown),
          ),
          const SizedBox(height: 20),
          Center(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  japCount++;
                });
              },
              child: Container(
                padding: const EdgeInsets.all(100),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.orange.shade300,
                ),
                child: const Text(
                  'श्री स्वामी समर्थ',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepOrange,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
