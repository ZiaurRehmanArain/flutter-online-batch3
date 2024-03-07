import 'package:flutter/material.dart';

class TableDataView extends StatelessWidget {
  const TableDataView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DataTable(
          // border: TableBorder.all(width: 2, color: Colors.black),
          // headingRowColor: MaterialStateProperty.resolveWith((states) => Colors.amberAccent),
          decoration: BoxDecoration(
              color: Colors.grey, borderRadius: BorderRadius.circular(10)),
          columns: [
            DataColumn(label: Text('S:no')),
            DataColumn(label: Text('Name')),
            DataColumn(label: Text('Course')),
          ],
          rows: [
            DataRow(cells: [
              DataCell(Text('sdfsdf')),
              DataCell(Text('sdfsdf')),
              DataCell(Text('sdfsdf')),
            ]),
            DataRow(cells: [
              DataCell(Text('sdfsdf')),
              DataCell(Text('sdfsdf')),
              DataCell(Text('sdfsdf')),
            ]),
            DataRow(cells: [
              DataCell(Text('sdfsdf')),
              DataCell(Text('sdfsdf')),
              DataCell(Text('sdfsdf')),
            ]),
            DataRow(cells: [
              DataCell(Text('sdfsdf')),
              DataCell(Text('sdfsdf')),
              DataCell(Text('sdfsdf')),
            ]),
          ]),
    );
  }
}
