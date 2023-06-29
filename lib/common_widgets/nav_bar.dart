import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      alignment: Alignment.center,
      child: SizedBox(
        height: 60,
        child: TabBar(
          onTap: (value) {
            setState(() {
              _selectedIndex = value;
            });
          },
          tabs: [
            Tab(
              icon: _selectedIndex == 0
                  ? Image.asset(
                      'assets/icons/home-selected.png',
                    )
                  : Image.asset(
                      'assets/icons/home.png',
                    ),
            ),
            Tab(
              icon: _selectedIndex == 1
                  ? Image.asset('assets/icons/booking-selected.png')
                  : Image.asset(
                      'assets/icons/booking.png',
                    ),
            ),
            Tab(
              icon: _selectedIndex == 2
                  ? Image.asset('assets/icons/video-selected.png')
                  : Image.asset('assets/icons/video.png'),
            ),
            Tab(
              icon: _selectedIndex == 3
                  ? Image.asset('assets/icons/noti-selected.png')
                  : Image.asset('assets/icons/noti.png'),
            ),
            Tab(
              icon: _selectedIndex == 4
                  ? Image.asset('assets/icons/dots-grid-selected.png')
                  : Image.asset('assets/icons/dots-grid.png'),
            ),
          ],
        ),
      ),
    );
  }
}
