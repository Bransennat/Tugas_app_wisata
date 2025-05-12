import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profil Pengguna')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/images/profil.jpg'),
              ),
              SizedBox(height: 16),
              Text("Brandon Tan", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              Text("Mahasiswa Teknik Informatika", style: TextStyle(fontSize: 16)),
              Text("Universitas Esa Unggul", style: TextStyle(fontSize: 16)),
            ],
          ),
        ),
      ),
    );
  }
}
