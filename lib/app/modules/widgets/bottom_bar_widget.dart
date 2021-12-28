import 'package:astro_tak/app/common/util/exports.dart';
import 'package:flutter/material.dart';

class BottomBarWidget extends StatelessWidget {
  final ValueChanged<int> onTap;
  final int currentIndex;
  final Map<String, String> bottomNavIcons;

  const BottomBarWidget({
    Key? key,
    required this.onTap,
    required this.currentIndex,
    required this.bottomNavIcons,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: onTap,
      currentIndex: currentIndex,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: AppColors.kPrimaryColor,
      unselectedItemColor: AppColors.silverChalice,
      items: bottomNavIcons.entries.map(
        (e) {
          return BottomNavigationBarItem(
            label: e.key,
            icon: Image.asset(
              e.value,
              width: 20.w,
              height: 20.w,
              color: currentIndex == bottomNavIcons.keys.toList().indexOf(e.key)
                  ? AppColors.kPrimaryColor
                  : Colors.grey,
            ),
          );
        },
      ).toList(),
    );
  }
}
