import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class CategriesItem extends StatelessWidget {
  const CategriesItem({
    super.key,
    required this.image,
    required this.title,
    required this.price,
    required this.oldPrice,
  });
  final String image;
  final String title;
  final String price;
  final String oldPrice;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(right: 15, top: 10),
              width: MediaQuery.of(context).size.height / 4,
              height: MediaQuery.of(context).size.height / 2.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.white,
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 155, top: 20, right: 10),
              height: 48,
              width: 48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: const Icon(Icons.favorite, color: Colors.blue),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Text(
          title,
          style: Styles.textStyle16,
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            Text(price,
                style:
                    Styles.textStyle16.copyWith(fontWeight: FontWeight.w700)),
            const SizedBox(width: 10),
            Text(
              oldPrice,
              style: Styles.textStyle14
                  .copyWith(decoration: TextDecoration.lineThrough),
            ),
          ],
        )
      ],
    );
  }
}
