import 'package:flutter/material.dart';

class AirplaneWindow extends StatelessWidget {
  const AirplaneWindow({super.key, required this.name, required this.image});

  final name;
  final image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 10),
      // height: 120,
      // width: 100,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
        child: ClipRRect(
          child: Container(
            height: 160,
            width: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                border: Border.all(
                    color: const Color.fromRGBO(255, 255, 255, 0.5), width: 5),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      image,
                    ))), // Replace with your desired window color
            child: Container(
              alignment: Alignment.bottomCenter,
              padding: const EdgeInsets.only(bottom: 0),
              child: Text(
                name,
                style: const TextStyle(
                  fontSize: 16,
                  // fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
