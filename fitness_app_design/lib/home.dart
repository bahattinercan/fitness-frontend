import 'package:fitness_app_design/widgets/day_card.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class _SalesData {
  _SalesData(this.year, this.sales);

  final String year;
  final double sales;
}

class Home extends StatelessWidget {
  Home({super.key});

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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(children: [
            //#region App Bar
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.amber.shade900,
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Icon(Icons.person_rounded),
                            ),
                          ),
                          Positioned(
                            bottom: 3,
                            right: 3,
                            child: Container(
                              alignment: Alignment.bottomRight,
                              width: 12.5,
                              height: 12.5,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(100),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 5.5,
                            right: 5.5,
                            child: Container(
                              alignment: Alignment.bottomRight,
                              width: 7.5,
                              height: 7.5,
                              decoration: BoxDecoration(
                                color: Colors.amber.shade900,
                                borderRadius: BorderRadius.circular(100),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Hello Linh!"),
                          SizedBox(height: 5),
                          Text("Wednesday, 14 July", style: TextStyle(fontWeight: FontWeight.w900, fontSize: 16)),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(color: Colors.grey.shade300, borderRadius: BorderRadius.circular(100)),
                    child: Padding(
                      padding: const EdgeInsets.all(1.5),
                      child: Container(
                        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(100)),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Icon(
                            Icons.calendar_view_month_outlined,
                            color: Colors.amber.shade900,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //#endregion

            //#region list of days
            Padding(
              padding: const EdgeInsets.only(bottom: 24),
              child: Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    DayCardWidget(
                      isSelected: false,
                    ),
                    DayCardWidget(
                      isSelected: false,
                    ),
                    DayCardWidget(
                      isSelected: true,
                    ),
                    DayCardWidget(
                      isSelected: false,
                    ),
                    DayCardWidget(
                      isSelected: false,
                    ),
                  ],
                ),
              ),
            ),
            //#endregion

            //#region table
            Container(
              height: 250,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30, top: 30),
                    child: Text(
                      "1 467 Kcal",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        fontSize: 24,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, top: 5),
                    child: Text(
                      "Total Kilocalories",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Expanded(
                    child: SfCartesianChart(
                      primaryXAxis: CategoryAxis(),
                      // Chart title
                      // Enable legend
                      legend: Legend(isVisible: true),
                      plotAreaBorderColor: Colors.transparent,
                      plotAreaBackgroundColor: Colors.transparent,
                      // Enable tooltip
                      tooltipBehavior: TooltipBehavior(enable: true),
                      series: <ChartSeries<_SalesData, String>>[
                        LineSeries<_SalesData, String>(
                          dataSource: data,
                          xValueMapper: (_SalesData sales, _) => sales.year,
                          yValueMapper: (_SalesData sales, _) => sales.sales,
                          name: 'Sales',
                          isVisibleInLegend: false,
                          color: Colors.white,
                          // Enable data label
                          dataLabelSettings: DataLabelSettings(
                            isVisible: false,
                            opacity: 0,
                            connectorLineSettings: ConnectorLineSettings(),
                            color: Colors.white,
                            borderColor: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(24), color: Colors.deepPurple),
            ),
            //#endregion

            //#region details
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        "7580 m",
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Distance",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "7580 m",
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Distance",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "7580 m",
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Distance",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  )
                ],
              ),
            ),
            //#endregion

            //#region activite cards

            //#endregion
          ]),
        ),
      ),
    );
  }
}
