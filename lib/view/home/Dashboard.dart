import 'package:flutter/material.dart';
import 'package:web_flutter/view/home/widgets/DashboardBarChart1.dart';
import 'package:web_flutter/view/home/widgets/DashboardDataTable.dart';

import './widgets/InfoCard.dart';
import 'widgets/DashboardBarChart.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(40, 0, 20, 0),
      child: SingleChildScrollView(
        child: Column(
          children: [
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
}
