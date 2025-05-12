import 'package:flutter/material.dart';
import '../screens/detail_page.dart';

class CarouselWidget extends StatelessWidget {
  final List<Map<String, String>> destinations = [
    {
      'title': 'Taman Safari Bogor',
      'image': 'assets/images/wisata1.jpg',
      'description':
          'Taman Safari Bogor adalah tempat wisata alam dan edukasi di Puncak, Jawa Barat. Pengunjung bisa melihat berbagai hewan dalam habitat alami menggunakan mobil pribadi atau bus safari.'
    },
    {
      'title': 'Taman Mini Indonesia',
      'image': 'assets/images/wisata2.jpg',
      'description':
          'Taman Mini Indonesia Indah menampilkan budaya seluruh provinsi Indonesia seperti rumah adat, pakaian tradisional, tarian, dan museum.'
    },
    {
      'title': 'Ancol',
      'image': 'assets/images/wisata3.jpg',
      'description':
          'Ancol merupakan kawasan wisata tepi laut di Jakarta dengan berbagai wahana seperti Dunia Fantasi, Sea World, dan Pantai Ancol.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: destinations.length,
      itemBuilder: (context, index) {
        final destination = destinations[index];
        return GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (_) => DetailPage(destination: destination),
            ));
          },
          child: Container(
            width: 250,
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [BoxShadow(blurRadius: 4, color: Colors.black26)],
            ),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
                  child: Image.asset(destination['image']!, height: 140, fit: BoxFit.cover),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    destination['title']!,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
