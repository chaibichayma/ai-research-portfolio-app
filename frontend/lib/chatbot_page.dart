import 'package:flutter/material.dart';

class ChatbotPage extends StatefulWidget {
  @override
  _ChatbotPageState createState() => _ChatbotPageState();
}

class _ChatbotPageState extends State<ChatbotPage> {
  final TextEditingController _controller = TextEditingController();
  List<Map<String, String>> messages = [];

  void sendMessage() {
    String userMessage = _controller.text;

    if (userMessage.isEmpty) return;

    setState(() {
      messages.add({"sender": "user", "text": userMessage});
      messages.add({
        "sender": "bot",
        "text": "I am your AI assistant 🤖"
      });
    });

    _controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("AI Chatbot")),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: messages.map((msg) {
                return Align(
                  alignment: msg["sender"] == "user"
                      ? Alignment.centerRight
                      : Alignment.centerLeft,
                  child: Container(
                    margin: EdgeInsets.all(8),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: msg["sender"] == "user"
                          ? Colors.blue
                          : Colors.grey[800],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(msg["text"]!),
                  ),
                );
              }).toList(),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _controller,
                  decoration: InputDecoration(
                    hintText: "Type a message...",
                  ),
                ),
              ),
              IconButton(
                icon: Icon(Icons.send),
                onPressed: sendMessage,
              )
            ],
          )
        ],
      ),
    );
  }
}