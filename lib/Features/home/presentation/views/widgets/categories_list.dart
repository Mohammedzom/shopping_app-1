import 'package:flutter/material.dart';
import 'package:shopping_app/core/utils/styles.dart';

import 'catgories_view.dart';

class Categories extends StatefulWidget {
  const Categories({
    super.key,
  });

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> with TickerProviderStateMixin {
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

class Catgories extends StatelessWidget {
  const Catgories({
    super.key,
    required this.tabController,
  });

  final TabController? tabController;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: TabBar(
        labelPadding: EdgeInsets.zero,
        indicatorPadding: const EdgeInsets.symmetric(horizontal: 10.5),
        indicator: const BoxDecoration(
          color: Color(0xFF63A1FF),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
            topLeft: Radius.circular(10),
          ),
        ),
        controller: tabController,
        tabs: const [
          Tab(child: Text('👕', style: Styles.textStyle24)),
          Tab(child: Text('👖', style: Styles.textStyle24)),
          Tab(child: Text('👞', style: Styles.textStyle24)),
          Tab(child: Text('👒', style: Styles.textStyle24)),
          Tab(
            child: SizedBox(
                width: 48,
                height: 48,
                child: Center(child: Text('⌚', style: Styles.textStyle24))),
          )
        ],
      ),
    );
  }
}
