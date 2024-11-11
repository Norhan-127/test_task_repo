import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_task/core/utils/enums.dart';
import 'package:test_task/core/utils/svg_images.dart';


class CustomBottomNavBar extends StatelessWidget {
  final BottomNavItem selectedItem;
  final Function(BottomNavItem) onItemSelected;

  const CustomBottomNavBar({
    super.key,
    required this.selectedItem,
    required this.onItemSelected,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: selectedItem.index,
      onTap: (index) {
        BottomNavItem selectedNavItem = BottomNavItem.values[index];
        onItemSelected(selectedNavItem);
      },
      items:  [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(AppSvgImages.homeIcon),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(AppSvgImages.homeIcon),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(AppSvgImages.homeIcon),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(AppSvgImages.homeIcon),
          label: '',
        ),
      ],
    );
  }
}
