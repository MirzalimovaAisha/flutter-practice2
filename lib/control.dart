import 'package:flutter/material.dart';

class ControlPage extends StatelessWidget {
  const ControlPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          decoration: InputDecoration(
            hintText: 'Search Plant',
            prefixIcon: Icon(Icons.search),
            suffixIcon: Icon(Icons.mic),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide.none,
            ),
            filled: true,
            fillColor: Colors.grey[200],
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.notifications_none),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: SizedBox(
              height: 40,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CategoryChip(label: 'Recommended'),
                  CategoryChip(label: 'Indoor'),
                  CategoryChip(label: 'Outdoor'),
                  CategoryChip(label: 'Garden'),
                  CategoryChip(label: 'Succulents'),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Text('New Plants', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ),
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                PlantCard(name: 'Indoor Sansevieria', price: '22', image: 'assets/img1.jpg'),
                PlantCard(name: 'Outdoor Philodendron', price: '18', image: 'assets/img2.jpg'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CategoryChip extends StatelessWidget {
  final String label;

  const CategoryChip({required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: Chip(
        label: Text(label),
        backgroundColor: Colors.grey[200],
      ),
    );
  }
}

class PlantCard extends StatelessWidget {
  final String name;
  final String price;
  final String image;

  const PlantCard({
    required this.name,
    required this.price,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
          Image.asset(image, width: 150, height: 150, fit: BoxFit.cover),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                Text('\$$price', style: TextStyle(fontSize: 14)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
