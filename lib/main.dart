import 'package:flutter/material.dart';
import 'package:flutter_provider_example/provider/count_provider.dart';
import 'package:flutter_provider_example/view/home.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider(
        create: (_) => CountProvider(),
        child: Home(),
      )
    );
  }
}