import 'package:flutter/material.dart';

class ArticlesPage extends StatefulWidget {
  @override
  _ArticlesPageState createState() => _ArticlesPageState();
}

class _ArticlesPageState extends State<ArticlesPage> {
  final TextEditingController _controller = TextEditingController();
  String summary = "";

  void summarizeText() {
    setState(() {
      summary = "This is a summarized version of your text 🧠";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Article Summarizer")),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              maxLines: 5,
              decoration: InputDecoration(
                hintText: "Paste your article here...",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: summarizeText,
              child: Text("Summarize"),
            ),
            SizedBox(height: 20),
            Text("Summary:", style: TextStyle(fontWeight: FontWeight.bold)),
            Text(summary),
          ],
        ),
      ),
    );
  }
}