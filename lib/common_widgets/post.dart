import 'package:flutter/material.dart';
import 'package:ecommerce/common_widgets/shopping_card_carousel.dart';

class Post extends StatelessWidget {
  const Post({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 20),
        margin: const EdgeInsets.only(
          top: 10,
        ),
        // padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: const BoxDecoration(color: Colors.white),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.only(right: 10),
                    child: IconButton(
                      style: const ButtonStyle(
                        padding: MaterialStatePropertyAll<EdgeInsetsGeometry>(
                            EdgeInsets.all(5)),
                        fixedSize: MaterialStatePropertyAll<Size>(Size(50, 50)),
                        shape: MaterialStatePropertyAll<OutlinedBorder>(
                            CircleBorder()),
                      ),
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
                          radius: 50,
                          backgroundImage: AssetImage('assets/icons/dog.png'),
                        ),
                      ),
                    ),
                  ),
                  const Expanded(
                    flex: 8,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Soctrip gợi ý cho bạn',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text('Mua sắm'),
                      ],
                    ),
                  ),
                  const Icon(Icons.more_horiz),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              alignment: Alignment.centerLeft,
              child: const Text(
                'Cùng Soctrip khám phá các sản phẩm với ưu đãi hấp dẫn.',
              ),
            ),
            const ShoppingCardCarousel(),
          ],
        ));
  }
}
