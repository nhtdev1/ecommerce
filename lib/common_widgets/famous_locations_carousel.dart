import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/common_widgets/airplane_window.dart';

class FamouseLocations extends StatelessWidget {
  const FamouseLocations({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        items: const [
          AirplaneWindow(
            name: 'Đà Nẵng',
            image: 'assets/danang.png',
          ),
          AirplaneWindow(
            name: 'Cần Thơ',
            image: 'assets/cantho.png',
          ),
          AirplaneWindow(
            name: 'Huế',
            image: 'assets/hue.png',
          ),
          AirplaneWindow(
            name: 'Vũng Tàu',
            image: 'assets/vungtau.png',
          ),
          AirplaneWindow(
            name: 'Hội An',
            image: 'assets/hoian.png',
          ),
          AirplaneWindow(
            name: 'Mộc Châu',
            image: 'assets/mocchau.png',
          ),
        ],
        options: CarouselOptions(
          viewportFraction: 0.3,
          height: 200,
        ));
  }
}
