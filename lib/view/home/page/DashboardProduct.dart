import 'package:flutter/material.dart';
import 'dart:math';
import 'package:intl/intl.dart';

import 'package:get/get.dart';

class DashboardProduct extends StatefulWidget {
  DashboardProduct({Key? key}) : super(key: key);

  @override
  State<DashboardProduct> createState() => _DashboardProductState();
}

class _DashboardProductState extends State<DashboardProduct> {
  final DataTableSource _data = MyData();

  DateTimeRange _date = DateTimeRange(
    //     final DateTime now = DateTime.now();
    // final DateFormat formatter = DateFormat('yyyy-MM-dd');
    // final String formatted = formatter.format(now);

    start: DateTime.now(),
    end: DateTime.now(),
  );

  formatStartDate() {
    //Start
    // ignore: non_constant_identifier_names
    final DateTime Startnow = _date.start;
    // ignore: non_constant_identifier_names
    final DateFormat Startformatter = DateFormat('yyyy-MM-dd');
    final String start = Startformatter.format(Startnow);

    return start;
  }

  formatEndDate() {
    //Start
    // ignore: non_constant_identifier_names
    final DateTime Endnow = _date.end;
    // ignore: non_constant_identifier_names
    final DateFormat Endformatter = DateFormat('yyyy-MM-dd');
    final String end = Endformatter.format(Endnow);

    return end;
  }

  void _selectDate() async {
    final DateTimeRange? newDate = await showDateRangePicker(
      context: context,
      initialDateRange: _date,
      firstDate: DateTime(2017, 1),
      lastDate: DateTime(2022, 7),
      helpText: 'Select a date range',
    );
    if (newDate != null) {
      setState(() {
        _date = newDate;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Card(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                Text('Products',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
                Spacer(),
                OutlinedButton(
                  child: Row(
                    children: [
                      Text(
                        formatStartDate(),
                        textAlign: TextAlign.center,
                      ),
                      Icon(Icons.expand_more)
                    ],
                  ),
                  onPressed: () {
                    // ignore: unnecessary_statements
                    _selectDate();
                  },
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all(EdgeInsets.all(20)),
                      textStyle:
                          MaterialStateProperty.all(TextStyle(fontSize: 15))),
                ),
                Padding(padding: EdgeInsets.only(left: 15)),
                ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    children: [Text("Export"), Icon(Icons.file_upload)],
                  ),
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all(EdgeInsets.all(20)),
                      textStyle:
                          MaterialStateProperty.all(TextStyle(fontSize: 15))),
                )
              ],
            ),
          ),
        ),
        Padding(padding: EdgeInsets.only(bottom: 15)),
        PaginatedDataTable(
          rowsPerPage: 7,
          columns: [
            DataColumn(label: Text('ID')),
            DataColumn(label: Text('Name')),
            DataColumn(label: Text('Price')),
            DataColumn(label: Text('Sales')),
            DataColumn(label: Text('Available')),
            DataColumn(label: Text('Edit'))
          ],
          source: _data,
        ),
      ],
    );
    // Padding(
    //   padding: const EdgeInsets.only(top: 30.0),
    //   child: PaginatedDataTable(
    //     source: _data,
    //     header: const Text('My Products'),
    // columns: const [
    //   DataColumn(label: Text('ID')),
    //   DataColumn(label: Text('Name')),
    //   DataColumn(label: Text('Price')),
    //   DataColumn(label: Text('Sales')),
    //   DataColumn(label: Text('Available')),
    //   DataColumn(label: Text('Edit'))
    // ],
    //     columnSpacing: 100,
    //     horizontalMargin: 10,
    //     rowsPerPage: 8,
    //     showCheckboxColumn: true,
    //   ),
    // );
  }
}

// The "soruce" of the table
class MyData extends DataTableSource {
  // Generate some made-up data
  final List<Map<String, dynamic>> _data = List.generate(
      200,
      (index) => {
            "id": index,
            "title": "Item $index",
            "price": Random().nextInt(10000),
            "Sales": Random().nextInt(10000),
            "Available": Random().nextInt(10000),
            "Edit": ""
          });

  @override
  bool get isRowCountApproximate => true;
  @override
  int get rowCount => _data.length;
  @override
  int get selectedRowCount => 0;
  @override
  DataRow getRow(int index) {
    return DataRow(cells: [
      DataCell(Text(_data[index]['id'].toString())),
      DataCell(Text(_data[index]["title"])),
      DataCell(Text(_data[index]["price"].toString())),
      DataCell(Text(_data[index]["Sales"].toString())),
      DataCell(Text(_data[index]["Available"].toString())),
      DataCell(Row(
        children: [
          PopupMenuButton(
            icon: Icon(Icons.more_vert),
            itemBuilder: (BuildContext context) => <PopupMenuEntry>[
              PopupMenuItem(
                child: ListTile(
                  leading: Icon(Icons.visibility),
                  title: Text('Preview'),
                  onTap: () {
                    Get.snackbar(
                      "title",
                      _data[index]["title"].toString(),
                      icon: Icon(Icons.person, color: Colors.white),
                      snackPosition: SnackPosition.BOTTOM,
                    );
                  },
                ),
              ),
              PopupMenuItem(
                child: ListTile(
                    leading: Icon(Icons.edit),
                    title: Text('Edit'),
                    onTap: () {
                      Get.snackbar(
                        "title",
                        _data[index]["title"].toString(),
                        icon: Icon(Icons.person, color: Colors.white),
                        snackPosition: SnackPosition.BOTTOM,
                      );
                    }),
              ),
            ],
          )
        ],
      ))
    ]);
  }
}
