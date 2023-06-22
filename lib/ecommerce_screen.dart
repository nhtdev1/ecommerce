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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back_ios,
                        color: Color(0xFF475467)),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  const SizedBox(width: 12),
                  const SizedBox(
                    child: Image(
                      image: AssetImage("assets/soctrip_logo.png"),
                      width: 35,
                      height: 35,
                    ),
                  ),
                  const SizedBox(width: 6),
                  const Text(
                    'Ecommerce App',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
