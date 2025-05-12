import 'package:flutter/material.dart';
import '../widgets/carousel_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Text(
                    'Pengenalan Wisata Indonesia',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple,
                      fontFamily: 'BirdyScript',
                    ),
                  ),
                ),
              ),
              Expanded(child: CarouselWidget()),
              SizedBox(height: 20),
              Text(
                'Destinasi Populer',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: Colors.deepPurple[700],
                ),
              ),
              SizedBox(height: 10),
              Expanded(
                child: ListView(
                  children: [
                    ListTile(
                      leading: Icon(Icons.place, color: Colors.deepPurple),
                      title: Text('Raja Ampat'),
                      subtitle: Text('Surga bawah laut di Papua Barat'),
                      trailing: Icon(Icons.arrow_forward_ios),
                      onTap: () {
                        // TODO: Navigate to detail page or other action
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.place, color: Colors.deepPurple),
                      title: Text('Borobudur'),
                      subtitle: Text('Candi Buddha terbesar di dunia'),
                      trailing: Icon(Icons.arrow_forward_ios),
                      onTap: () {
                        // TODO: Navigate to detail page or other action
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.place, color: Colors.deepPurple),
                      title: Text('Bali'),
                      subtitle: Text('Pulau Dewata dengan pantai indah'),
                      trailing: Icon(Icons.arrow_forward_ios),
                      onTap: () {
                        // TODO: Navigate to detail page or other action
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
