import 'package:flutter/material.dart';

import 'core/utils/app_router.dart';
import 'core/utils/constns.dart';

void main() async {
  runApp(const ShoppingApp());
}

class ShoppingApp extends StatelessWidget {
  const ShoppingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(fontFamily: kFontFamily),
      routerConfig: AppRouter.router,
    );
  }
}
