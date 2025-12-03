import 'package:flutter/material.dart';
import 'package:perplexity_clone/pages/widgets/sidebar_button.dart';
import 'package:perplexity_clone/theme/colors.dart';

class SideBar extends StatefulWidget {
  const SideBar({super.key});

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  bool isCollapsed = true;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 350),
      width: isCollapsed ? 64 : 150,
      color: AppColors.sideNav,
      child: Column(
        crossAxisAlignment:
            isCollapsed ? CrossAxisAlignment.center : CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 16),

          // TOP LOGO
          Icon(
            Icons.auto_awesome_mosaic,
            color: AppColors.whiteColor,
            size: 30,
          ),

          const SizedBox(height: 20),

          // MENU ITEMS - clean and correct
          SideBarButton(
              isCollapsed: isCollapsed, icon: Icons.home, text: "Home"),
          SideBarButton(
              isCollapsed: isCollapsed, icon: Icons.search, text: "Search"),
          SideBarButton(
              isCollapsed: isCollapsed, icon: Icons.language, text: "Language"),
          SideBarButton(
              isCollapsed: isCollapsed, icon: Icons.auto_awesome, text: "Discover"),
          SideBarButton(
              isCollapsed: isCollapsed, icon: Icons.cloud_outlined, text: "Library"),

          const Spacer(),

          // COLLAPSE/EXPAND BUTTON
          GestureDetector(
            onTap: () {
              setState(() {
                isCollapsed = !isCollapsed;
              });
            },
            child: Icon(
              isCollapsed
                  ? Icons.keyboard_arrow_right
                  : Icons.keyboard_arrow_left,
              color: AppColors.iconGrey,
              size: 22,
            ),
          ),

          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
