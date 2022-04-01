import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:intl/intl.dart';

class DashboardBarChart1 extends StatefulWidget {
  const DashboardBarChart1({Key? key}) : super(key: key);

  @override
  State<DashboardBarChart1> createState() => _DashboardBarChartState1();
}

class _DashboardBarChartState1 extends State<DashboardBarChart1> {
  late List<ChartSampleData> _chartData;
  late TooltipBehavior _tooltipBehavior;

  @override
  void initState() {
    _chartData = getChartData();
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 30, 0, 30),
      child: SfCartesianChart(
        tooltipBehavior: _tooltipBehavior,
        title: ChartTitle(text: 'Product Sales'),
        series: <RangeColumnSeries>[
          RangeColumnSeries<ChartSampleData, DateTime>(
            dataSource: _chartData,
            xValueMapper: (ChartSampleData data, _) => data.x,
            highValueMapper: (ChartSampleData data, _) => data.high,
            lowValueMapper: (ChartSampleData data, _) => data.low,
          )
        ],
        primaryXAxis: DateTimeAxis(
            edgeLabelPlacement: EdgeLabelPlacement.shift,
            dateFormat: DateFormat.MMM(),
            intervalType: DateTimeIntervalType.months,
            majorGridLines: MajorGridLines(width: 0)),
      ),
    );
  }

  List<ChartSampleData> getChartData() {
    final List<ChartSampleData> chartData = [
      ChartSampleData(DateTime(2021, 1, 1), 3, 9),
      ChartSampleData(DateTime(2021, 2, 1), 4, 11),
      ChartSampleData(DateTime(2021, 3, 1), 6, 13),
      ChartSampleData(DateTime(2021, 4, 1), 9, 17),
      ChartSampleData(DateTime(2021, 5, 1), 12, 20),
      ChartSampleData(DateTime(2021, 6, 1), 12, 30),
      ChartSampleData(DateTime(2021, 7, 1), 12, 40),
      ChartSampleData(DateTime(2021, 8, 1), 12, 50),
      ChartSampleData(DateTime(2021, 9, 1), 12, 70),
    ];
    return chartData;
  }
}

class ChartSampleData {
  ChartSampleData(this.x, this.high, this.low);
  final DateTime x;
  final double high;
  final double low;
}
