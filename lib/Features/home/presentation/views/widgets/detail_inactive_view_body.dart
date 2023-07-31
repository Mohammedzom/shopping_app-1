import 'package:flutter/material.dart';
import 'package:shopping_app/core/utils/styles.dart';
import 'package:shopping_app/core/widgets/custom_app_bar.dart';
import 'package:shopping_app/core/widgets/custom_container.dart';

class DetailInactiveViewBody extends StatelessWidget {
  const DetailInactiveViewBody({super.key, required this.card});
  final Map<String, String> card;
  @override
  Widget build(BuildContext context) {
    return ListView(
      // controller: ScrollController(),
      // reverse: ,
      padding: EdgeInsets.zero,

      children: [
        const SafeArea(child: SizedBox(height: 20)),
        const CustomAppBar(),
        const SizedBox(height: 25),
        SizedBox(
          child: Column(
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: Text(card['title']!,
                            style: Styles.textStyle20
                                .copyWith(fontWeight: FontWeight.w600)),
                      ),
                      const SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: Row(
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
                        ),
                      ),
                      const SizedBox(height: 24),
                      Container(
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
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomContainer(child: Icon(Icons.favorite_border)),
                        CustomContainer(child: Icon(Icons.favorite_border)),
                        CustomContainer(child: Icon(Icons.favorite_border)),
                        CustomContainer(child: Icon(Icons.favorite_border)),
                        CustomContainer(child: Icon(Icons.favorite_border)),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
