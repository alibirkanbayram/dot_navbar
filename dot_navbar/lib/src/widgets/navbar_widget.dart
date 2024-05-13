import 'package:dot_navbar/shared/constants_shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../controllers/dotnavbargeneral_controller.dart';
import '../../models/dotmenuitem_model.dart';
import '../../shared/allprovider.dart';

class NavBarWidget extends ConsumerStatefulWidget {
  final Color backgroundColor, selectedColor, unSelectedColor;
  final List<DotMenuItemModel> dotMenuItems;
  final double height, width;
  final bool isTitleVisible;
  final bool isTitleBottom;

  const NavBarWidget({
    required this.backgroundColor,
    required this.selectedColor,
    required this.unSelectedColor,
    required this.dotMenuItems,
    required this.height,
    required this.width,
    required this.isTitleVisible,
    required this.isTitleBottom,
    super.key,
  });

  @override
  ConsumerState<NavBarWidget> createState() => _NavBarWidgetState();
}

class _NavBarWidgetState extends ConsumerState<NavBarWidget> {
  @override
  void initState() {
    super.initState();
    String selectedIndex = ref.read(pageIndex);
    if (selectedIndex == "") {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        ref
            .read(pageIndex.notifier)
            .update((state) => widget.dotMenuItems[0].keyValue);
      });
    }
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    DotNavbarGeneralController navbarController =
        DotNavbarGeneralController(ref);
    String selectedPage = ref.watch(pageIndex);
    return Container(
      height: widget.height * 0.08,
      width: widget.width - (widget.width * 0.02 * 2),
      decoration: BoxDecoration(
        color: widget.backgroundColor,
        borderRadius: BorderRadius.circular(
          widget.height * SharedConstants.borderRadius,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: widget.width * SharedConstants.generalPadding * 2,
        ),
        child: Row(
          children: [
            for (var icon in widget.dotMenuItems.map((e) => e.icon))
              Expanded(
                flex: 1,
                child: InkWell(
                  onTap: () {
                    navbarController.setPageIndex(widget
                        .dotMenuItems[widget.dotMenuItems
                            .indexWhere((element) => element.icon == icon)]
                        .keyValue);
                  },
                  child: SizedBox(
                    child: widget.isTitleVisible == true
                        ? widget.isTitleBottom == true
                            ? IsVisibleBottomNavbar(
                                icon: icon,
                                height: widget.height,
                                dotMenuItems: widget.dotMenuItems,
                              )
                            : IsVisibleRowNavbar(
                                icon: icon,
                                height: widget.height,
                                width: widget.width,
                                dotMenuItems: widget.dotMenuItems,
                              )
                        : Icon(
                            icon,
                            size: widget.height * SharedConstants.iconSize,
                            color: selectedPage ==
                                    widget
                                        .dotMenuItems[widget.dotMenuItems
                                            .indexWhere((element) =>
                                                element.icon == icon)]
                                        .keyValue
                                ? widget.selectedColor
                                : widget.unSelectedColor,
                          ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class IsVisibleRowNavbar extends StatelessWidget {
  const IsVisibleRowNavbar({
    super.key,
    required this.icon,
    required this.height,
    required this.width,
    required this.dotMenuItems,
  });

  final IconData icon;
  final double height;
  final double width;
  final List<DotMenuItemModel> dotMenuItems;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: height * SharedConstants.iconSize,
          color: Colors.white,
        ),
        Padding(
          padding: EdgeInsets.only(
            left: width * SharedConstants.generalPadding,
          ),
          child: Text(
            dotMenuItems[
                    dotMenuItems.indexWhere((element) => element.icon == icon)]
                .keyValue,
            style: TextStyle(
              color: Colors.white,
              fontSize: height * SharedConstants.iconSize,
            ),
          ),
        ),
      ],
    );
  }
}

class IsVisibleBottomNavbar extends StatelessWidget {
  const IsVisibleBottomNavbar({
    super.key,
    required this.icon,
    required this.height,
    required this.dotMenuItems,
  });

  final IconData icon;
  final double height;
  final List<DotMenuItemModel> dotMenuItems;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: height * SharedConstants.iconSize,
          color: Colors.white,
        ),
        Padding(
          padding: EdgeInsets.only(
            top: height * SharedConstants.generalPadding,
          ),
          child: Text(
            dotMenuItems[
                    dotMenuItems.indexWhere((element) => element.icon == icon)]
                .keyValue,
            style: TextStyle(
              color: Colors.white,
              fontSize: height * SharedConstants.iconSize,
            ),
          ),
        ),
      ],
    );
  }
}
