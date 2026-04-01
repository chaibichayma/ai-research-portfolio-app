import 'package:flutter/material.dart';

class ProjectsPage extends StatelessWidget {
  final List<Map<String, String>> projects = [
    {
      "title": "Chatbot AI",
      "desc": "NLP based chatbot",
    },
    {
      "title": "Recommendation System",
      "desc": "ML recommendation engine",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Projects")),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: projects.map((project) {
          return Card(
            elevation: 5,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: ListTile(
              title: Text(project["title"]!),
              subtitle: Text(project["desc"]!),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          );
        }).toList(),
      ),
    );
  }
}