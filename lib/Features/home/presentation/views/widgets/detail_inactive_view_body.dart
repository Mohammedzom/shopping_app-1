import 'package:flutter/material.dart';
import 'package:shopping_app/core/utils/styles.dart';
import 'package:shopping_app/core/widgets/custom_app_bar.dart';
import 'package:shopping_app/core/widgets/custom_container.dart';

class DetailInactiveViewBody extends StatelessWidget {
  const DetailInactiveViewBody({super.key, required this.card});
  final Map<String, String> card;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SafeArea(child: SizedBox(height: 20)),
        const CustomAppBar(),
        const SizedBox(height: 25),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: SizedBox(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(card['title']!,
                            style: Styles.textStyle20
                                .copyWith(fontWeight: FontWeight.w600)),
                        const SizedBox(height: 15),
                        Row(
                          children: [
                            Text(card['price']!,
                                style: Styles.textStyle16
                                    .copyWith(fontWeight: FontWeight.w700)),
                            const SizedBox(width: 10),
                            Text(
                              card['oldPrice']!,
                              style: Styles.textStyle14.copyWith(
                                  decoration: TextDecoration.lineThrough),
                            ),
                          ],
                        )
                      ],
                    ),
                    const CustomContainer(
                      color: Color(0xFFEDEDED),
                      child:
                          Icon(Icons.favorite_border, color: Color(0xff63A1FF)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 24),
        Row(children: [
          Container(
            // alignment: Alignment.bottomRight,
            // constraints: const BoxConstraints(maxHeight: 500),
            width: MediaQuery.of(context).size.width / 1.29,
            height: MediaQuery.of(context).size.height / 1.2905,
            padding: EdgeInsets.zero,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(card['image']!),
                fit: BoxFit.fill,
              ),
            ),
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 24, left: 10, bottom: 15),
                child: CustomContainer(child: Icon(Icons.abc)),
              ),
            ],
          )
        ]),

        // Stack(
        //   children: [
        //     Image.asset(
        //       card['image']!,
        //       width: 280,
        //       height: 610,
        //     ),
        //   ],
        // ),
        // Stack(
        //   children: [
        //     Positioned(
        //         // left: 271,
        //   child: Image.asset(
        // card['image']!,
        // width: 271,
        // height: 610,
        //     )),
        //   ],
        // )
      ],
    );
  }
}
