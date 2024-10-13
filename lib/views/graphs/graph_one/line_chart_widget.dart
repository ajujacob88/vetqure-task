import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineChartWidget extends StatelessWidget {
  const LineChartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return LineChart(
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
              const AxisTitles(sideTitles: SideTitles(showTitles: false)),
          rightTitles:
              const AxisTitles(sideTitles: SideTitles(showTitles: false)),
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
        lineTouchData:
            const LineTouchData(enabled: false), // Disable touch feedback
      ),
    );
  }
}
