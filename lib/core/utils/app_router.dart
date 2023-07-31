import 'package:go_router/go_router.dart';
import 'package:shopping_app/Features/home/presentation/views/home_view.dart';

import '../../Features/home/presentation/views/detail_inactive_view.dart';
import '../../Features/login/presentation/views/login_view.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kDetailInactiveView = '/detailInactiveView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const LoginView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
          path: kDetailInactiveView,
          builder: (context, state) {
            return DetailInactiveView(card: state.extra as Map<String, String>);
          })
    ],
  );
}
