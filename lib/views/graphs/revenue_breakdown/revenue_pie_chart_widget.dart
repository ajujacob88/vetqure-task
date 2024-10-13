import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class RevenuePieChartWidget extends StatelessWidget {
  final double percentage; // Percentage value (0-100)
  final Color activeColor; // Color for the percentage segment
  final String label; // Label for the pie chart (optional)

  const RevenuePieChartWidget({
    super.key,
    required this.percentage,
    required this.activeColor,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100, // Adjust width and height as needed
      height: 100,

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
                    radius: 15,
                    // Start from the top and go clockwise
                    titleStyle: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                      fontSize: 18,
                    ),
                  ),
                  PieChartSectionData(
                    value: 100 - percentage,
                    color: Colors.grey, // Grey for remaining percentage
                    showTitle: false,
                    radius: 15,
                  ),
                ],
                borderData: FlBorderData(show: false),
                centerSpaceRadius: 35, // Adjust space for center text
                startDegreeOffset:
                    270, // Start drawing from the top (12 o'clock)
                sectionsSpace: 0),
          ),
          // Display the percentage in the center
          Text(
            '${percentage.toStringAsFixed(0)}%', // Show percentage in center
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.normal,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}

/*
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
    return Stack(
      alignment: Alignment.center,
      children: [
        PieChart(
          PieChartData(
            sections: [
              PieChartSectionData(
                value: percentage,
                color: activeColor, // Active color, e.g., blue for stock
                showTitle: false,
                radius: 15,
              ),
              PieChartSectionData(
                value: 100 - percentage,
                color: Colors.grey, // Grey for remaining percentage
                showTitle: false,
                radius: 15,
              ),
            ],
            borderData: FlBorderData(show: false),
            centerSpaceRadius: 35, // Adjust space for center text
          ),
        ),
        // Display the percentage in the center
        Text(
          '${percentage.toStringAsFixed(0)}%',
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.normal,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
*/