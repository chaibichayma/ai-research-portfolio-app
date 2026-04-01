import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Chaibi Chayma",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            Text("AI Engineer"),

            SizedBox(height: 20),

            Text("Skills"),
            SizedBox(height: 10),

            LinearProgressIndicator(value: 0.9),
            SizedBox(height: 10),
            LinearProgressIndicator(value: 0.8),
          ],
        ),
      ),
    );
  }
}