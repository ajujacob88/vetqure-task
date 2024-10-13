/*
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class GraphOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: LineChart(
        LineChartData(
          gridData: const FlGridData(
            show: false,
            // horizontalInterval:
            //     10, // Show grid lines for y-axis at 10, 20, 30, etc.
            // verticalInterval:
            //     1, // Show grid lines for x-axis between time intervals
          ),
          titlesData: FlTitlesData(
            leftTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 40,
                interval: 10, // Show 10, 20, 30, 40, 50
                getTitlesWidget: (value, meta) {
                  switch (value.toInt()) {
                    case 10:
                      return const Text('10');
                    case 20:
                      return const Text('20');
                    case 30:
                      return const Text('30');
                    case 40:
                      return const Text('40');
                    case 50:
                      return const Text('50');
                    default:
                      return const SizedBox();
                  }
                },
              ),
            ),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 40,
                getTitlesWidget: (value, meta) {
                  switch (value.toInt()) {
                    case 0:
                      return const Text('9-10 AM');
                    case 1:
                      return const Text('10-11 AM');
                    case 2:
                      return const Text('11-12 PM');
                    case 3:
                      return const Text('12-1 PM');
                    case 4:
                      return const Text('1-2 PM');
                    case 5:
                      return const Text('2-3 PM');
                    default:
                      return const SizedBox();
                  }
                },
              ),
            ),
            topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          ),
          borderData: FlBorderData(
            show: true,
            border: const Border(
              left: BorderSide(color: Colors.black),
              bottom: BorderSide(color: Colors.black),
              right: BorderSide(color: Colors.transparent),
              top: BorderSide(color: Colors.transparent),
            ),
          ),
          minX: 0,
          maxX: 5,
          minY: 0,
          maxY: 50,
          lineBarsData: [
            LineChartBarData(
              spots: [
                FlSpot(0, 10),
                FlSpot(1, 20),
                FlSpot(2, 30),
                FlSpot(3, 40),
                FlSpot(4, 50),
                FlSpot(5, 30),
              ],
              isCurved: true,
              color: Colors.blue,
              dotData: FlDotData(show: false),
              belowBarData: BarAreaData(show: false),
            ),
          ],
          lineTouchData: LineTouchData(enabled: false),
        ),
      ),
    );
  }
}

*/

import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class GraphOne extends StatelessWidget {
  const GraphOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // First row with 'Walk in Client' and Filter button
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Walk in Client',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.normal,
                ),
              ),
              ElevatedButton.icon(
                onPressed: () {
                  // Add filter functionality here
                },
                icon: const Icon(
                  Icons.filter_alt_outlined,
                  color: Color(0xFF00358C),
                  size: 21,
                ),
                label: const Text(
                  'Filter',
                  style: TextStyle(fontSize: 16, color: Color(0xFF00358C)),
                ),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 1.0),
                  backgroundColor: Colors.white,
                  // foregroundColor: Colors.transparent,
                  side: const BorderSide(color: Color(0xFF00358C)),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0), // Rounded corners
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20.0),

          // Second row with Total Walking and New Client data
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // Total Walking section
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '20', // Total walking count
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'Total Walk In',
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),

              const SizedBox(width: 40.0),

              // New Client section
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Text(
                        '30', // New client count
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(width: 8.0),
                      // Arrow and percentage change
                      Row(
                        children: [
                          Icon(
                            Icons.arrow_upward,
                            color: Colors.green[700], // Up arrow color
                            size: 20.0,
                          ),
                          const Text(
                            '12%', // Percentage change
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Text(
                    'New Client',
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),

              const SizedBox(width: 50.0),
              // Existing Client section
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Text(
                        '20', // Existing client count
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(width: 8.0),
                      // Arrow and percentage change
                      Row(
                        children: [
                          Icon(
                            Icons.arrow_downward,
                            color: Colors.red[700], // Up arrow color
                            size: 20.0,
                          ),
                          const Text(
                            '12%', // Percentage change
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Text(
                    'Existing Client',
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ],
          ),

          const SizedBox(height: 20.0),
          Expanded(
            child: LineChart(
              LineChartData(
                gridData: const FlGridData(
                  show: false, // Show grid lines
                ), // Grid lines for x-axis),
                titlesData: FlTitlesData(
                  leftTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      reservedSize: 40,
                      interval: 10,
                      getTitlesWidget: (value, meta) {
                        return Text(value.toInt().toString());
                      },
                      // getTitlesWidget: (value, meta) {
                      //   switch (value.toInt()) {
                      //     case 10:
                      //       return const Text('10');
                      //     case 20:
                      //       return const Text('20');
                      //     case 30:
                      //       return const Text('30');
                      //     case 40:
                      //       return const Text('40');
                      //     case 50:
                      //       return const Text('50');
                      //     default:
                      //       return const SizedBox();
                      //   }
                      // },
                    ),
                  ),
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      reservedSize: 40,
                      interval: 1,
                      getTitlesWidget: (value, meta) {
                        switch (value.toInt()) {
                          case 0:
                            return const Text('');
                          case 1:
                            return const Text('9-10 AM');
                          case 2:
                            return const Text('10-11 AM');
                          case 3:
                            return const Text('11-12 PM');
                          case 4:
                            return const Text('12-1 PM');
                          case 5:
                            return const Text('1-2 PM');
                          case 6:
                            return const Text('2-3 PM');
                          case 7:
                            return const Text('3-4 PM');
                          case 8:
                            return const Text('4-5 PM');
                          case 9:
                            return const Text('5-6 PM');
                          case 10:
                            return const Text('6-7 PM');
                          default:
                            return const SizedBox();
                        }
                      },
                    ),
                  ),
                  topTitles:
                      AxisTitles(sideTitles: SideTitles(showTitles: false)),
                  rightTitles:
                      AxisTitles(sideTitles: SideTitles(showTitles: false)),
                ),
                borderData: FlBorderData(
                  show: true,
                  border: const Border(
                    left: BorderSide(color: Colors.black),
                    bottom: BorderSide(color: Colors.black),
                    right: BorderSide(color: Colors.transparent),
                    top: BorderSide(color: Colors.transparent),
                  ),
                ),
                minX: 0,
                maxX: 11,
                minY: 0,
                maxY: 50,
                lineBarsData: [
                  LineChartBarData(
                    spots: [
                      // FlSpot(0, 2),
                      const FlSpot(1, 10),
                      const FlSpot(2, 20),
                      const FlSpot(3, 25),
                      const FlSpot(4, 30),
                      const FlSpot(5, 10),
                      const FlSpot(6, 30),
                      const FlSpot(7, 30),
                      const FlSpot(8, 30),
                      const FlSpot(9, 40),
                      const FlSpot(10, 20),
                    ],
                    isCurved: false,
                    color: const Color.fromARGB(255, 8, 100, 175),
                    dotData: const FlDotData(show: true),
                    belowBarData: BarAreaData(show: false),
                    barWidth: 1,
                  ),
                ],
                lineTouchData: const LineTouchData(
                    enabled: false), // Disable touch feedback
              ),
            ),
          ),
        ],
      ),
    );
  }
}
