import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:marketpedia/config/theme/app_theme_constant.dart';
import 'package:marketpedia/config/theme/colors.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(12), topLeft: Radius.circular(12)),
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(12.0),
          topRight: Radius.circular(12.0),
        ),
        child: BottomAppBar(
          notchMargin: 0.01,
          clipBehavior: Clip.antiAlias,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildNavItem(Icons.home_outlined, 'Home', 0),
              _buildNavItem(Icons.search, 'Search', 1),
              const SizedBox(),
              _buildNavItem(Icons.receipt_outlined, 'History', 2),
              _buildNavItem(Icons.person_outline, 'Profile', 3)
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem(IconData icon, String label, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _currentIndex = index;
        });

        switch (_currentIndex) {
          case 0:
            GoRouter.of(context).go('/');
            break;
          case 1:
            GoRouter.of(context).go('/search');
          case 2:
            GoRouter.of(context).go('/history');
          case 3:
            GoRouter.of(context).go('/profile');
          default:
        }
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: navBarIconSize,
            color: _currentIndex == index ? success : white,
          ),
          const SizedBox(height: 2),
          Text(
            label,
            style: TextStyle(
              color: _currentIndex == index ? red : white,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
