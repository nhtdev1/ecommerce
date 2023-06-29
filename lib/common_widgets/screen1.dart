import 'package:flutter/material.dart';
import 'package:ecommerce/common_widgets/famous_locations_carousel.dart';
import 'package:ecommerce/common_widgets/post.dart';
import 'package:ecommerce/common_widgets/share_experience.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const ShareExperience(),
              Container(
                margin: const EdgeInsets.only(
                  top: 10,
                ),
                decoration: const BoxDecoration(color: Colors.white),
                padding: const EdgeInsets.symmetric(vertical: 20),
                width: MediaQuery.of(context).size.width,
                child: Column(children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      'Khám phá địa điểm nổi bật',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  const FamouseLocations(),
                ]),
              ),
              const Post(),
              const Post(),
            ],
          ),
        ));
  }
}
