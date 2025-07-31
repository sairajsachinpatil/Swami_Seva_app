import 'package:swami_seva/screens/mal_jap_screen.dart';
import 'swami_parichay_screen.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final appBarHeight = 90.0;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(appBarHeight),
        child: AppBar(
          backgroundColor: Colors.orange,
          centerTitle: true,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 12), // Pushes title downward
              Text(
                "!! श्री स्वामी समर्थ !!",
                style: TextStyle(
                  color: Colors.yellow,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0, left: 4),
                  child: Text(
                    "स्वामी सेवा",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            _buildTile(context, "माळ जप", Icons.repeat),
            _buildTile(context, "आरती विभाग", Icons.library_music),
            _buildTile(context, "स्तोत्र विभाग", Icons.menu_book),
            _buildTile(context, "स्वामी परिचय", Icons.person),
            _buildTile(context, "इतर सेवा", Icons.volunteer_activism),
            _buildTile(context, "फोटो संग्रह", Icons.photo_library),
          ],
        ),
      ),
    );
  }

  Widget _buildTile(BuildContext context, String title, IconData icon) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6),
      height: 90,
      decoration: BoxDecoration(
        color: Colors.orange.shade50,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.orange, width: 1),
      ),
      child: Center(
        child: ListTile(
          leading: Icon(icon, size: 30, color: Colors.deepOrange),
          title: Text(
            title,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          onTap: () {
            if (title == "माळ जप") {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MalJapScreen()),
              );
            } else if (title == "स्वामी परिचय") {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  SwamiParichayScreen()),
              );
            } else {
              // Show "Coming Soon" Alert
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  title: const Text("लवकरच..."),
                  content: const Text("ही सेवा लवकरच सुरू होईल"),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text("ठीक आहे"),
                    ),
                  ],
                ),
              );
            }
          },



        ),
      ),
    );
  }
}
