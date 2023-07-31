import 'package:flutter/material.dart';
import 'widgets/detail_inactive_view_body.dart';

class DetailInactiveView extends StatelessWidget {
  const DetailInactiveView({super.key, required this.card});
  final Map<String, String> card;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DetailInactiveViewBody(
        card: card,
      ),
    );
  }
}
