import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScaffoldWithNavigationRail extends StatelessWidget {
  const ScaffoldWithNavigationRail({
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
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height:500,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(bottomRight: Radius.circular(12)),
              boxShadow: [
                BoxShadow(
                  spreadRadius: 1,
                  blurRadius: 3,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: NavigationRail(
              indicatorColor: Colors.transparent,
              selectedIndex: selectedIndex,
              onDestinationSelected: onDestinationSelected,
              labelType: NavigationRailLabelType.all,
              destinations: const [
                NavigationRailDestination(
                    label: Text('Пользователи'),
                    icon: Icon(CupertinoIcons.person_3),
                    selectedIcon: Icon(CupertinoIcons.person_3_fill)),
                NavigationRailDestination(
                    label: Text('Транспорт'),
                    icon: Icon(CupertinoIcons.car),
                    selectedIcon: Icon(CupertinoIcons.car_fill))
              ],
            ),
          ),
         // const VerticalDivider(thickness: 1, width: 1),
          // This is the main content.
          Expanded(
            child: body,
          ),
        ],
      ),
    );
  }
}

class CustomRails extends NavigationRail{
  CustomRails({required super.destinations, required super.selectedIndex});


}