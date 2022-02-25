import 'package:currency_converter/inject.dart';
import 'package:currency_converter/presentation/currency_calculator/currency_calculator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () => MaterialApp(
        title: 'Currency Calculator',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const CurrencyCalculator(),
      ),
    );
  }
}
