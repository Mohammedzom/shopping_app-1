import 'package:flutter/material.dart';

import 'catgories.dart';
import 'catgories_view.dart';

class CategoriesList extends StatefulWidget {
  const CategoriesList({
    super.key,
  });

  @override
  State<CategoriesList> createState() => _CategoriesListState();
}

class _CategoriesListState extends State<CategoriesList>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController? tabController = TabController(length: 5, vsync: this);
    final List<Map<String, String>> card = [
      {
        'image': 'assets/images/image-1.png',
        'title': 'Acapella Black Shirt',
        'price': '\$240',
        'oldPrice': '\$480'
      },
      {
        'image': 'assets/images/image-2.png',
        'title': 'Acapella White Shirt',
        'price': '\$240',
        'oldPrice': '\$480'
      }
    ];
    return Column(
      children: [
        Catgories(tabController: tabController),
        SizedBox(
          height: 400,
          width: double.maxFinite,
          child: TabBarView(
            controller: tabController,
            children: [
              CatgorieView(card: card),
              CatgorieView(card: card),
              CatgorieView(card: card),
              CatgorieView(card: card),
              CatgorieView(card: card),
            ],
          ),
        ),
      ],
    );
  }
}
