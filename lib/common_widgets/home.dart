import 'package:flutter/material.dart';
import 'package:ecommerce/common_widgets/screen1.dart';
import 'package:ecommerce/common_widgets/screen2.dart';
import 'package:ecommerce/common_widgets/screen3.dart';
import 'package:ecommerce/common_widgets/screen4.dart';
import 'package:ecommerce/common_widgets/screen5.dart';
import 'package:ecommerce/common_widgets/nav_bar.dart';
import 'package:ecommerce/common_widgets/top_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
    this.bookNow,
    this.shopNow,
  }) : super(key: key);

  final VoidCallback? bookNow;
  final VoidCallback? shopNow;

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 5,
      child: Scaffold(
        body: Stack(
          clipBehavior: Clip.none,
          children: [
            Column(
              children: [
                TopBar(),
                Expanded(
                  child: TabBarView(
                    children: [
                      Screen1(),
                      Screen2(),
                      Screen3(),
                      Screen4(),
                      Screen5()
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              top: 100,
              right: 25,
              left: 25,
              child: NavBar(),
            )
          ],
        ),
      ),
    );
  }
}
