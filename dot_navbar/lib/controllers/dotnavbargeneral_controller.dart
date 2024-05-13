import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/dotmenuitem_model.dart';
import '../shared/allprovider.dart';

class DotNavbarGeneralController {
  final WidgetRef ref;
  DotNavbarGeneralController(this.ref);
  void setPageIndex(String key) {
    ref.read(pageIndex.notifier).update((state) => key);
  }

  Widget getPage(List<DotMenuItemModel> dotMenuItem) {
    String keyValue = ref.watch(pageIndex);
    var selectedItem = dotMenuItem.firstWhere(
      (element) => element.keyValue == keyValue,
      orElse: () => DotMenuItemModel(
        keyValue: '',
        page: Container(), // Varsayılan bir widget
        icon: Icons.error, // Hata durumunda bir ikon
      ),
    );
    return selectedItem.page;
  }
}
