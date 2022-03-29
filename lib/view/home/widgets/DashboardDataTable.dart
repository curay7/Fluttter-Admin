import 'package:flutter/material.dart';
import 'dart:math';

class DashboardDataTable extends StatefulWidget {
  const DashboardDataTable({Key? key}) : super(key: key);

  @override
  _DashboardDataTableState createState() => _DashboardDataTableState();
}

class _DashboardDataTableState extends State<DashboardDataTable> {
  final DataTableSource _data = MyData();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: PaginatedDataTable(
        source: _data,
        header: const Text('My Products'),
        columns: const [
          DataColumn(label: Text('ID')),
          DataColumn(label: Text('Name')),
          DataColumn(label: Text('Price'))
        ],
        columnSpacing: 100,
        horizontalMargin: 10,
        rowsPerPage: 8,
        showCheckboxColumn: false,
      ),
    );
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
            "price": Random().nextInt(10000)
          });

  @override
  bool get isRowCountApproximate => false;
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
    ]);
  }
}




//import 'package:data_table_2/data_table_2.dart';
//
// class DashboardDataTable extends StatelessWidget {
//   const DashboardDataTable({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       child: DataTable2(
//           columnSpacing: 12,
//           horizontalMargin: 12,
//           minWidth: 600,
//           columns: [
//             DataColumn2(
//               label: Text('Column A'),
//               size: ColumnSize.L,
//             ),
//             DataColumn(
//               label: Text('Column B'),
//             ),
//             DataColumn(
//               label: Text('Column C'),
//             ),
//             DataColumn(
//               label: Text('Column D'),
//             ),
//             DataColumn(
//               label: Text('Column NUMBERS'),
//               numeric: true,
//             ),
//           ],
//           rows: List<DataRow>.generate(
//               100,
//               (index) => DataRow(cells: [
//                     DataCell(Text('A' * (10 - index % 10))),
//                     DataCell(Text('B' * (10 - (index + 5) % 10))),
//                     DataCell(Text('C' * (15 - (index + 5) % 10))),
//                     DataCell(Text('D' * (15 - (index + 10) % 10))),
//                     DataCell(Text(((index + 0.1) * 25.4).toString()))
//                   ]))),
//     );
//   }
// }
