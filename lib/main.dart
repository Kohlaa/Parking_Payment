import 'package:flutter/material.dart';
import 'package:parking_payment/modules/payment/toggle_screen.dart';
import 'package:parking_payment/modules/payment/visa_screen.dart';

import 'core/network/dio.dart';
import 'modules/register/register_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DioHelperPayment.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: RegisterScreen(),
    );
  }
}
