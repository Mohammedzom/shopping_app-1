import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

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
