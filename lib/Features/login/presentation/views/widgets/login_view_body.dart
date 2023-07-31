import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping_app/Features/login/presentation/views/widgets/custom_login_widget.dart';
import 'package:shopping_app/core/utils/app_router.dart';
import 'package:shopping_app/core/utils/styles.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SafeArea(child: SizedBox(height: 20)),
        Center(
          child: Text(
            'Gombal',
            style: Styles.textStyle20.copyWith(
              color: const Color(0xFF63A1FF),
            ),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: 82),
        Image.asset('assets/images/logo.png'),
        const SizedBox(height: 81),
        const Text('Discover you style', style: Styles.textStyle24),
        const SizedBox(height: 15),
        const SizedBox(
          width: 244,
          child: Text(
            'Get quality and classy products at very affordable prices.',
            style: Styles.textStyle14,
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: 40),
        Padding(
          padding: const EdgeInsets.only(right: 19, left: 29),
          child: Column(
            children: [
              CustomLoginWidget(
                  color: const Color(0xFFFF6060),
                  icon: 'assets/images/google.svg',
                  name: 'Google',
                  onTap: () => GoRouter.of(context).push(AppRouter.kHomeView)),
              const SizedBox(height: 20),
              const CustomLoginWidget(
                  color: Color(0xff63A1FF),
                  icon: 'assets/images/facebook.svg',
                  name: 'Facebook'),
              const SizedBox(height: 20),
              const CustomLoginWidget(
                  color: Color(0xFF1F1F24),
                  icon: 'assets/images/apple.svg',
                  name: 'Apple'),
            ],
          ),
        ),
      ],
    );
  }
}
