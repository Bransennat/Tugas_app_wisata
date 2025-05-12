import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final Map<String, String> destination;

  DetailPage({required this.destination});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(destination['title'] ?? "")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Image.asset(destination['image'] ?? "", fit: BoxFit.cover),
            SizedBox(height: 16),
            Text(
              destination['title'] ?? "",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(destination['description'] ?? "", style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
