import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 24, bottom: 135),
      child: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xFFF93995),
        child: SvgPicture.asset('assets/images/shopping-cart.svg'),
      ),
    );
  }
}
