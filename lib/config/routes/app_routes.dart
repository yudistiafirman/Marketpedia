import 'package:flutter/material.dart';
import 'package:marketpedia/config/routes/routes_name.dart';
import 'package:marketpedia/features/cart/presentation/pages/cart_screen.dart';
import 'package:marketpedia/features/dashboard/presentation/pages/dashboard_screen.dart';
import 'package:marketpedia/features/history/presentation/pages/history_screen.dart';
import 'package:marketpedia/features/home/presentation/pages/home_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:marketpedia/features/product_detail/presentation/pages/product_detail_screen.dart';
import 'package:marketpedia/features/search/search_creen.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey(debugLabel: 'shell');

class GoRouterProvider {
  GoRouter goRouter() {
    return GoRouter(
        navigatorKey: _rootNavigatorKey,
        initialLocation: '/',
        routes: [
          ShellRoute(
              navigatorKey: _shellNavigatorKey,
              builder: (context, state, child) {
                return DashboardScreen(
                  key: state.pageKey,
                  child: child,
                );
              },
              routes: [
                GoRoute(
                  path: '/',
                  name: RouteList.home,
                  pageBuilder: (context, state) {
                    return NoTransitionPage(
                        child: HomeScreen(key: state.pageKey));
                  },
                ),
                GoRoute(
                  path: '/search',
                  name: RouteList.search,
                  pageBuilder: (context, state) {
                    return NoTransitionPage(
                        child: SearchScreen(key: state.pageKey));
                  },
                ),
                GoRoute(
                  path: '/history',
                  name: RouteList.history,
                  pageBuilder: (context, state) {
                    return NoTransitionPage(
                        child: HistoryScreen(key: state.pageKey));
                  },
                ),
                GoRoute(
                  path: '/profile',
                  name: RouteList.profile,
                  pageBuilder: (context, state) {
                    return NoTransitionPage(
                        child: HistoryScreen(key: state.pageKey));
                  },
                ),
              ]),
          GoRoute(
            path: '/cart',
            name: RouteList.cart,
            pageBuilder: (context, state) {
              return NoTransitionPage(
                  child: CartScreen(
                key: state.pageKey,
              ));
            },
          ),
          GoRoute(
            path: '/detail',
            name: RouteList.detail,
            pageBuilder: (context, state) {
              return NoTransitionPage(
                  child: ProductDetailScreen(
                key: state.pageKey,
              ));
            },
          )
        ]);
  }
}
