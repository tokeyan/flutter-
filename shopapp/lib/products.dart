import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final String title;
  final double price;
  final String img;
  const Products({
    super.key,
    required this.title,
    required this.price,
    required this.img,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color.fromARGB(255, 206, 229, 236),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            '\$${price}',
            style: Theme.of(context).textTheme.bodySmall,
          ),
          const SizedBox(
            height: 5,
          ),
          Center(
            child: Image(
              image: AssetImage(img),
              height: 200,
              width: 300,
              fit: BoxFit.cover,
            ),
          )
        ],
      ),
    );
  }
}
