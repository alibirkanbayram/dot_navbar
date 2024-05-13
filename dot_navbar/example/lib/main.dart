import 'package:dot_navbar/dot_navbar.dart';
import 'package:dot_navbar/shared/constants_shared.dart';
import 'package:example/shared/list_shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge, overlays: []);
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: SharedConstants.appName,
      home: DotNavBar(
        dotMenuItems: SharedList.itemList,
        navbarBackgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        isBottom: true,
        isTitleVisible: false,
      ),
    );
  }
}
