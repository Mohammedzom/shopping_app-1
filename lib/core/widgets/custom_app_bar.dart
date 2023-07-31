import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping_app/core/utils/styles.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
              left: 24, right: MediaQuery.of(context).size.width / 3),
          child: GestureDetector(
              onTap: () => GoRouter.of(context).pop(),
              child: const Icon(Icons.arrow_back)),
        ),
        Center(
          child: Text('Items',
              style: Styles.textStyle20.copyWith(color: Colors.black)),
        ),
      ],
    );
  }
}
