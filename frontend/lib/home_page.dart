import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("AI Portfolio")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hello 👋",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            Text("Chaibi Chayma - AI Engineer"),

            SizedBox(height: 20),

            // Card
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              child: ListTile(
                leading: Icon(Icons.psychology),
                title: Text("My AI Projects"),
                subtitle: Text("Explore my work"),
              ),
            ),

            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              child: ListTile(
                leading: Icon(Icons.smart_toy),
                title: Text("AI Chatbot"),
                subtitle: Text("Ask me anything"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}