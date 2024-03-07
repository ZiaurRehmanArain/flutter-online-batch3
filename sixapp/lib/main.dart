import 'package:flutter/material.dart';
import 'package:sixapp/screen/list_view_builder.dart';
import 'package:sixapp/screen/list_view_view.dart';
import 'package:sixapp/screen/table_data_view.dart';
import 'package:sixapp/screen/table_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ListViewBuilder(),
    );
  }
}
