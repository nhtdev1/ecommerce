import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/common_widgets/famous_locations_carousel.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.white,
      child: Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: SingleChildScrollView(
          child: Column(children: [
            Stack(clipBehavior: Clip.none, children: [
              Image.asset('assets/beach-topview.jpg'),
              const Positioned(
                top: 20,
                left: 0,
                right: 0,
                child: BookingForm(),
              ),
            ]),
            const SizedBox(
              height: 80,
            ),
            CarouselSlider(
                items: [1, 2, 3, 4].map((e) {
                  return Builder(
                    builder: (context) {
                      return Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        margin: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 30),
                        width: 450,

                        // margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/banner$e.webp'),
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      );
                    },
                  );
                }).toList(),
                options: CarouselOptions(
                  height: 200,
                  viewportFraction: 0.9,
                )),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              alignment: Alignment.centerLeft,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Địa điểm du lịch nổi tiếng',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Icon(Icons.arrow_forward_ios),
                ],
              ),
            ),
            const FamouseLocations(),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              alignment: Alignment.centerLeft,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hot Deal',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Icon(Icons.arrow_forward_ios),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              alignment: Alignment.centerLeft,
              child: const Text(
                'Những khách sạn giá tốt nhất dành cho bạn',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

class BookingForm extends StatelessWidget {
  const BookingForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.loose(const Size(2000, 2000)),
      padding: const EdgeInsets.all(20),

      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.all(20),
      child: Form(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            BookingFormField(
                hintText: 'Nhập điểm đến, khách sạn',
                icon: Image.asset('assets/icons/marker-pin.png')),
            Row(children: [
              Expanded(
                child: BookingFormField(
                    hintText: 'Nhận phòng',
                    icon: Image.asset('assets/icons/calendar.png')),
              ),
              Expanded(
                child: BookingFormField(
                    hintText: 'Trả phòng',
                    icon: Image.asset('assets/icons/calendar.png')),
              ),
            ]),
            BookingFormField(
                hintText: '1 người lớn - 0 trẻ em - 1 phòng',
                icon: Image.asset('assets/icons/users.png')),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 20),
              width: 400,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    alignment: Alignment.center,
                    fixedSize: const MaterialStatePropertyAll<Size>(
                        Size.fromHeight(40)),
                    backgroundColor:
                        const MaterialStatePropertyAll<Color>(Colors.blue),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)))),
                child: const Text(
                  'Tìm khách sạn',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
      // height: 400,
    );
  }
}

class BookingFormField extends StatelessWidget {
  const BookingFormField(
      {super.key, required this.hintText, required this.icon});

  final hintText;
  final icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(width: 0.3, color: Colors.grey.shade200))),
      padding: const EdgeInsets.all(5),
      child: TextFormField(
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(20),
          icon: icon,
          filled: true,
          fillColor: Colors.white,
          hintText: hintText,
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade100),
          ),
          errorBorder: const UnderlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
            borderSide: BorderSide.none,
          ),
          focusedBorder: const UnderlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
            borderSide: BorderSide(color: Colors.black),
          ),
          focusedErrorBorder: const UnderlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
            borderSide: BorderSide(color: Colors.red),
          ),
        ),
      ),
    );
  }
}
