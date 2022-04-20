import 'package:flutter/material.dart';
import 'package:web_flutter/apps/dashboard/view/widgets/Chart1.dart';
import 'package:web_flutter/apps/dashboard/view/widgets/Table.dart';
import 'package:intl/intl.dart';

import '../widgets/InfoCard.dart';
import '../widgets/Chart.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  String dropdownValue = 'One';
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

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(40, 40, 20, 40),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(bottom: 20),
              child: Row(
                children: [
                  Text('Dashboard',
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
                  OutlinedButton(
                    child: Row(
                      children: [
                        Text(
                          formatEndDate(),
                          textAlign: TextAlign.center,
                        ),
                        Icon(Icons.expand_less)
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
                  )
                ],
              ),
            ),
            Row(
              children: [
                InfoCard(
                  title: "Rides in progress",
                  value: "7",
                  onTap: () {},
                  topColor: Colors.orange,
                ),
                SizedBox(
                  width: 30,
                ),
                InfoCard(
                  title: "Packages delivered",
                  value: "17",
                  topColor: Colors.lightGreen,
                  onTap: () {},
                ),
                SizedBox(
                  width: 30,
                ),
                InfoCard(
                  title: "Cancelled delivery",
                  value: "3",
                  topColor: Colors.redAccent,
                  onTap: () {},
                ),
                SizedBox(
                  width: 30,
                ),
                InfoCard(
                  title: "Scheduled deliveries",
                  value: "32",
                  topColor: Colors.redAccent,
                  onTap: () {},
                ),
              ],
            ),
            Row(
              children: [
                Expanded(flex: 1, child: DashboardBarChart()),
                Expanded(flex: 2, child: DashboardBarChart1())
              ],
            ),
            DashboardDataTable()
          ],
        ),
      ),
    );
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
}
