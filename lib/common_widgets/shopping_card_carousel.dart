import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ShoppingCardCarousel extends StatelessWidget {
  const ShoppingCardCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        items: const [
          ShoppingCard(
            name: 'Vali hành lý xách tay',
            price: '45.000đ',
            image: 'assets/vali1.png',
          ),
          ShoppingCard(
            name: 'Vali hành lý xách tay',
            price: '45.000đ',
            image: 'assets/vali2.png',
          ),
        ],
        options: CarouselOptions(
          viewportFraction: 0.6,
          height: 400,
        ));
  }
}

class ShoppingCard extends StatelessWidget {
  const ShoppingCard(
      {super.key,
      required this.image,
      required this.name,
      required this.price});

  final image;
  final name;
  final price;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 20),
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Container(
          clipBehavior: Clip.hardEdge,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.blue.shade100, Colors.white],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter),
            borderRadius: BorderRadius.circular(8),
          ),
          // width: 220,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                image,
                height: 250,
                width: 280,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 8),
              Text(
                name,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    price,
                    style: const TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      backgroundColor:
                          const MaterialStatePropertyAll(Colors.blue),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Buy Now',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
