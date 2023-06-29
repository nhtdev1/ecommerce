import 'package:flutter/material.dart';

class ShareExperience extends StatelessWidget {
  const ShareExperience({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      padding: const EdgeInsets.fromLTRB(20, 40, 20, 20),
      child: Row(
        children: [
          IconButton(
            iconSize: 50,
            onPressed: () {},
            icon: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.orange,
                  width: 2,
                ),
              ),
              padding: const EdgeInsets.all(3),
              child: const CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage('assets/icons/dog.png'),
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Container(
              height: 45,
              alignment: Alignment.center,
              child: TextField(
                decoration: InputDecoration(
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                    filled: true,
                    fillColor: Colors.grey.shade200,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                        borderSide: BorderSide(color: Colors.grey.shade300)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                        borderSide: BorderSide(color: Colors.grey.shade400)),
                    hintText: 'Chia sẻ trải nghiệm của bạn!',
                    hintStyle: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.grey)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
