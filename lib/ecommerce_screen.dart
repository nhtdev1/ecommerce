import 'package:flutter/material.dart';

class EcommerceScreen extends StatelessWidget {
  const EcommerceScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            top: 10,
            left: 0,
            right: 0,
            height: 120,
            // Adjust the height of the overlapping container as needed
            child: Container(
              color: const Color(0xFF175cd3),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 12),
                  SizedBox(
                    child: Image(
                      image: AssetImage("assets/soctrip_logo.png"),
                      width: 35,
                      height: 35,
                    ),
                  ),
                  SizedBox(width: 6),
                  Text(
                    'Soctrip',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
          ),
          Positioned(
            top: 100,
            left: 0,
            right: 0,
            height: 70,
            // Adjust the height of the overlapping container as needed
            child: Container(
              margin: const EdgeInsets.only(left: 12, right: 12),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(16)),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Color.fromRGBO(16, 24, 40, 0.05),
                    offset: Offset(0, 1),
                    blurRadius: 2,
                    spreadRadius: 0,
                  )
                ],
              ),
              child: const Text(
                'Ecommerce App',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF175cd3),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
