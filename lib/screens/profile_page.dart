import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profil Pengguna')),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('assets/images/profil.jpg'),
                ),
                SizedBox(height: 16),
                Text(
                  "Brandon Tan",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple,
                    fontFamily: 'BirdyScript',
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  "Mahasiswa Teknik Informatika",
                  style: TextStyle(fontSize: 18, color: Colors.deepPurple[700]),
                ),
                Text(
                  "Universitas Esa Unggul",
                  style: TextStyle(fontSize: 18, color: Colors.deepPurple[700]),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
