import 'package:dot_navbar/src/widgets/navbar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../controllers/dotnavbargeneral_controller.dart';
import '../../models/dotmenuitem_model.dart';
import '../../shared/constants_shared.dart';

class DotNavBar extends ConsumerWidget {
  final List<DotMenuItemModel> dotMenuItems;
  final Color navbarBackgroundColor, selectedItemColor, unselectedItemColor;
  final bool isBottom, isTitleVisible;

  const DotNavBar({
    required this.dotMenuItems,
    required this.navbarBackgroundColor,
    required this.selectedItemColor,
    required this.unselectedItemColor,
    this.isBottom = false,
    this.isTitleVisible = false,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    DotNavbarGeneralController navbarController =
        DotNavbarGeneralController(ref);
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    double height = mediaQueryData.size.height;
    double width = mediaQueryData.size.width;

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // Body
            Expanded(
              child: navbarController.getPage(dotMenuItems),
            ),
            // Navbar
            Positioned(
              bottom: isBottom == true
                  ? height * SharedConstants.generalPadding
                  : null,
              top: isBottom == true
                  ? null
                  : height * SharedConstants.generalPadding,
              left: width * SharedConstants.generalPadding,
              child: NavBarWidget(
                backgroundColor: navbarBackgroundColor,
                selectedColor: selectedItemColor,
                unSelectedColor: unselectedItemColor,
                dotMenuItems: dotMenuItems,
                height: height,
                width: width,
                isTitleVisible: isTitleVisible,
                isTitleBottom: isBottom,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
