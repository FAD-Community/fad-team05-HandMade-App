import 'package:flutter/material.dart';
import 'package:hand_made/l10n/app_localizations.dart';


List<BottomNavigationBarItem> getNavItems(BuildContext context) {
 final s = AppLocalizations.of(context)!;
  return [
    BottomNavigationBarItem(
      icon: const Icon(Icons.home_outlined),
      activeIcon: const Icon(Icons.home),
      label: s.home,
    ),
    BottomNavigationBarItem(
      icon: const Icon(Icons.search_outlined),
      activeIcon: const Icon(Icons.search),
      label: s.search,
    ),
    BottomNavigationBarItem(
      icon: const Icon(Icons.shopping_cart_outlined),
      activeIcon: const Icon(Icons.shopping_cart),
      label: s.cart,
    ),
    BottomNavigationBarItem(
      icon: const Icon(Icons.favorite_outline),
      activeIcon: const Icon(Icons.favorite),
      label: s.wishlist,
    ),
    BottomNavigationBarItem(
      icon: const Icon(Icons.person_outline),
      activeIcon: const Icon(Icons.person),
      label: s.profile,
    ),
  ];
}