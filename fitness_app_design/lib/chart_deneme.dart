import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class ChartDeneme extends StatefulWidget {
  const ChartDeneme({super.key});

  @override
  State<ChartDeneme> createState() => _ChartDenemeState();
}

class _ChartDenemeState extends State<ChartDeneme> {
  List<_SalesData> data = [
    _SalesData('Sat', 35),
    _SalesData('Sun', 28),
    _SalesData('Mon', 34),
    _SalesData('Tue', 32),
    _SalesData('Wed', 40),
    _SalesData('Thu', 32),
    _SalesData('Fri', 32),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Syncfusion Flutter chart'),
      ),
      body: Column(
        children: [
          //Initialize the chart widget
          SfCartesianChart(
            primaryXAxis: CategoryAxis(),
            // Chart title
            // Enable legend
            legend: Legend(isVisible: true),
            // Enable tooltip
            tooltipBehavior: TooltipBehavior(enable: true),
            series: <ChartSeries<_SalesData, String>>[
              LineSeries<_SalesData, String>(
                dataSource: data,
                xValueMapper: (_SalesData sales, _) => sales.year,
                yValueMapper: (_SalesData sales, _) => sales.sales,
                name: 'Sales',
                // Enable data label
                dataLabelSettings: DataLabelSettings(
                  isVisible: false,
                  opacity: 0,
                  connectorLineSettings: ConnectorLineSettings(
                    color: Colors.red,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class _SalesData {
  _SalesData(this.year, this.sales);

  final String year;
  final double sales;
}
