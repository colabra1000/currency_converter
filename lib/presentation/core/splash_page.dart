import 'package:currency_converter/presentation/core/app_layout.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AppLayout(
        child: Center(
      child: Text("Currency Converter Test"),
    ));
  }
}
