import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/utils/styles.dart';
import 'categories_list.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SafeArea(child: SizedBox(height: 20)),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            const Text('Good Morning ☀️', style: Styles.textStyle20),
            SvgPicture.asset('assets/images/search.svg', width: 24, height: 24)
          ]),
          const SizedBox(height: 5),
          Text('Let’s got something',
              style:
                  Styles.textStyle14.copyWith(color: const Color(0x661F1F24))),
          const SizedBox(height: 25),
          Container(
            width: 327,
            height: 110,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: const Color(0xFF63A1FF)),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Get discount up to 50%',
                      style: Styles.textStyle20.copyWith(color: Colors.white)),
                  const SizedBox(height: 10),
                  Text(
                      'Get a big discount with a very limited time, what are you waiting for shop now!',
                      style: Styles.textStyle14
                          .copyWith(color: const Color(0xCCF8F8F8))),
                ],
              ),
            ),
          ),
          const SizedBox(height: 25),
          const Text('Categories', style: Styles.textStyle16),
          const SizedBox(height: 15),
          const CategoriesList(),
        ],
      ),
    );
  }
}
