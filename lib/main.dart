import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stocker_bull_web/view/stocker_web_main_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Stock Bull Web',
      home: StockAdminPanel(),
    );
  }
}
