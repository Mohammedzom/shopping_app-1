import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomLoginWidget extends StatelessWidget {
  const CustomLoginWidget({
    super.key,
    required this.name,
    required this.icon,
    required this.color,
    this.onTap,
  });
  final String name;
  final String icon;
  final Color color;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 48,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
            child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: SvgPicture.asset(icon, width: 24, height: 24),
            ),
            Center(
              widthFactor: 2,
              child: Text('Sign in with $name',
                  style: const TextStyle(color: Color(0xFFF8F8F8))),
            ),
          ],
        )),
      ),
    );
  }
}
