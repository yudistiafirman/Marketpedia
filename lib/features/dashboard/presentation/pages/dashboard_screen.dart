import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:marketpedia/features/dashboard/presentation/widgets/bottom_navigation_bar/bottom_navbar.dart';
import 'package:marketpedia/features/dashboard/presentation/widgets/center_navbar/center_navbar.dart';

class DashboardScreen extends StatelessWidget {
  final Widget child;
  const DashboardScreen({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: const CustomBottomNavigationBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton:
          CenternNavbar(onPress: () => GoRouter.of(context).go('/cart')),
    );
  }
}
