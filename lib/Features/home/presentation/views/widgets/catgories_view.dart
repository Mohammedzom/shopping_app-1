import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_router.dart';
import 'categories_item.dart';

class CatgorieView extends StatelessWidget {
  const CatgorieView({
    super.key,
    required this.card,
  });

  final List<Map<String, String>> card;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 2,
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () {
            GoRouter.of(context)
                .push(AppRouter.kDetailInactiveView, extra: card[index]);
          },
          child: CategriesItem(
            image: card[index]['image']!,
            title: card[index]['title']!,
            price: card[index]['price']!,
            oldPrice: card[index]['oldPrice']!,
          ),
        );
      },
    );
  }
}
