import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'check_internet_widget.dart';
import 'data/check_internet_connection_provider.dart';

void main() {
  runApp(
      ChangeNotifierProvider(create: (_) => CheckInternet(),
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Check Internet Connectivity',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const CheckInternetWidget(),
    );
  }
}