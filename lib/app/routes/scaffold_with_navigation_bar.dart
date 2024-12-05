import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScaffoldWithNavigationBar extends StatelessWidget {
  const ScaffoldWithNavigationBar({
    super.key,
    required this.body,
    required this.selectedIndex,
    required this.onDestinationSelected,
  });

  final Widget body;
  final int selectedIndex;
  final ValueChanged<int> onDestinationSelected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body,
      bottomNavigationBar: NavigationBar(
        surfaceTintColor: Colors.transparent,
        indicatorColor: Colors.transparent,
        overlayColor: WidgetStateProperty.all(Colors.transparent),
        selectedIndex: selectedIndex,
        destinations: const [
          NavigationDestination(
            label: 'Пользователи',
            icon: Icon(CupertinoIcons.person_3),
            selectedIcon: Icon(CupertinoIcons.person_3_fill),
          ),
          NavigationDestination(
            label: 'Транспорт',
            icon: Icon(CupertinoIcons.car),
            selectedIcon: Icon(CupertinoIcons.car_fill),
          ),
        ],
        onDestinationSelected: onDestinationSelected,
      ),
    );
  }
}
