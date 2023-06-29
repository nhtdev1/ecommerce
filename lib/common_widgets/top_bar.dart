import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 30, 20, 30),
      color: Colors.blue,
      height: 120,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 2,
            child: Align(
                alignment: AlignmentDirectional.centerStart,
                child: IconButton(
                    iconSize: 40,
                    onPressed: () {},
                    icon: Image.asset('assets/icons/soctrip-logo-with-text.png'))),
          ),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  iconSize: 30,
                  onPressed: () {},
                  icon: Image.asset('assets/icons/search.png',
                      color: Colors.white),
                ),
                IconButton(
                  iconSize: 30,
                  onPressed: () {},
                  icon: Image.asset('assets/icons/message-dots-circle.png',
                      color: Colors.white),
                ),
                IconButton(
                  iconSize: 35,
                  onPressed: () {},
                  icon: Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.white,
                        width: 2,
                      ),
                    ),
                    padding: const EdgeInsets.all(3),
                    child: const CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage('assets/icons/dog.png'),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
