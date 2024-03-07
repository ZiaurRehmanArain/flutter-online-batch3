import 'package:flutter/material.dart';

class TableView extends StatelessWidget {
  const TableView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Table(
        border: TableBorder.all(width: 2, color: Colors.green),
        defaultColumnWidth: FlexColumnWidth(100),
        textDirection: TextDirection.rtl,
        children: [
          TableRow(children: [
            Text('S:no'),
            Text('Name'),
            Text('Course'),
          ]),
          TableRow(children: [
            Text('S:no'),
            Text('Name'),
            Text('Course'),
          ]),
          TableRow(children: [
            Text('S:no'),
            Text('Name'),
            Text('Course'),
          ]),
          TableRow(children: [
            Text('S:no'),
            Text('Name'),
            Text('Course'),
          ]),
          TableRow(children: [
            Text('S:no'),
            Text('Name'),
            Text('Course'),
          ]),
          TableRow(children: [
            Text('S:no'),
            Text('Name'),
            Text('Course'),
          ]),
        ],
      ),
    );
  }
}
