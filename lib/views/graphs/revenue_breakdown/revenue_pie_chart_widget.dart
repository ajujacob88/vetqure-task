import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class RevenuePieChartWidget extends StatelessWidget {
  final double percentage;
  final Color activeColor;
  final String label;

  const RevenuePieChartWidget({
    super.key,
    required this.percentage,
    required this.activeColor,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Add action when the pie chart button is tapped
      },
      child: Container(
        width: 100, // Adjust width and height as needed
        height: 100,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 2), // Button border
          borderRadius: BorderRadius.circular(8),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            PieChart(
              PieChartData(
                sections: [
                  PieChartSectionData(
                    value: percentage,
                    color: activeColor, // Active color, e.g., blue for stock
                    showTitle: false,
                    radius: 50,
                  ),
                  PieChartSectionData(
                    value: 100 - percentage,
                    color: Colors.grey, // Grey for remaining percentage
                    showTitle: false,
                    radius: 50,
                  ),
                ],
                borderData: FlBorderData(show: false),
                centerSpaceRadius: 40, // Adjust space for center text
              ),
            ),
            // Display the percentage in the center
            Text(
              '${percentage.toStringAsFixed(0)}%',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
