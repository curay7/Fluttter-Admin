import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class DashboardBarChart extends StatefulWidget {
  const DashboardBarChart({Key? key}) : super(key: key);

  @override
  State<DashboardBarChart> createState() => _DashboardBarChartState();
}

class _DashboardBarChartState extends State<DashboardBarChart> {
  late List<SALEdata> _chartData;
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
      child: SfCircularChart(
        title: ChartTitle(text: 'Target of this year- 2022 \n ( ₱200,000)'),
        legend:
            Legend(isVisible: true, overflowMode: LegendItemOverflowMode.wrap),
        tooltipBehavior: _tooltipBehavior,
        series: <CircularSeries>[
          RadialBarSeries<SALEdata, String>(
              dataSource: _chartData,
              xValueMapper: (SALEdata data, _) => data.productName,
              yValueMapper: (SALEdata data, _) => data.sale,
              dataLabelSettings: DataLabelSettings(isVisible: true),
              enableTooltip: true,
              maximumValue: 7000)
        ],
      ),
    );
  }

  List<SALEdata> getChartData() {
    final List<SALEdata> chartData = [
      SALEdata('Product 1', 1600),
      SALEdata('Product 2', 2490),
      SALEdata('Product 3', 2900),
    ];
    return chartData;
  }
}

class SALEdata {
  SALEdata(this.productName, this.sale);
  final String productName;
  final int sale;
}
