import 'package:flutter/material.dart';
import 'package:hand_made/core/constants/app_colors.dart';
import 'package:hand_made/features/home/presentation/widgets/home_header.dart';
import 'package:hand_made/features/home/presentation/widgets/nav_bar_item.dart';

class HomeScreenLayout extends StatefulWidget {
  const HomeScreenLayout({super.key});
  @override
  State<HomeScreenLayout> createState() => _HomeScreenLayoutState();
}

class _HomeScreenLayoutState extends State<HomeScreenLayout> {
  int _currentIndex = 0;
  final _screens = [
    Column(children: const [
      HomeHeader(userName: 'Noureen Basha', imageUrl: 'https://i.pravatar.cc/150?img=47', notifications: 3),
      Expanded(child: Center(child: Text('Home Content'))),
    ]),
    const Center(child: Text('Search')),
    const Center(child: Text('Cart')),
    const Center(child: Text('Wishlist')),
    const Center(child: Text('Profile')),
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: AppColors.homeScreenBgColor,
    body: _screens[_currentIndex],
    bottomNavigationBar: ClipRRect(
      borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
      child: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (i) => setState(() => _currentIndex = i),
        items: getNavItems(context),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColors.primary,
        unselectedItemColor: AppColors.grey,
        showUnselectedLabels: true,
      ),
    ),
  );
}