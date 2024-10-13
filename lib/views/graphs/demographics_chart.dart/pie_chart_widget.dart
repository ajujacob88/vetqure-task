import 'dart:math';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class UserDemographicsPieChart extends StatelessWidget {
  final Map<String, double> demographicsData; // Accept demographics data

  const UserDemographicsPieChart({super.key, required this.demographicsData});

  @override
  Widget build(BuildContext context) {
    // Calculate total value for percentage calculation
    double total = demographicsData.values.reduce((a, b) => a + b);

    return Column(
      // mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: 250, // Fixed height for the pie chart

          child: AspectRatio(
            aspectRatio: 1,
            child: PieChart(
              PieChartData(
                sections: demographicsData.entries
                    .map(
                      (entry) => PieChartSectionData(
                        value: entry.value,
                        color:
                            _getRandomColor(), // Get random color for each slice
                        title:
                            '${((entry.value / total) * 100).toStringAsFixed(0)}%', // Display percentage
                        radius: 130,
                        titleStyle: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                        showTitle: true,
                      ),
                    )
                    .toList(),
                borderData: FlBorderData(show: false),
                centerSpaceRadius: 0,
              ),
            ),
          ),
        ),
        const SizedBox(height: 20.0),
        // Legend section
        Wrap(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          spacing: 16.0, // Add some spacing between legend items
          // direction: Axis.horizontal,
          runSpacing: 4.0, // Space between rows of items (if they wrap)

          alignment: WrapAlignment.start,
          runAlignment: WrapAlignment.start,
          children: demographicsData.entries
              .map((entry) => LegendItem(
                    color: _getRandomColor(), // Use random color for legend too
                    // label:
                    //     '${entry.key} (${((entry.value / total) * 100).toStringAsFixed(0)}%)',
                    label: '${entry.key} ',
                  ))
              .toList(),
        ),
      ],
    );
  }

  // Function to get a random color
  Color _getRandomColor() {
    final Random random = Random();
    return Color.fromARGB(
      255, // Alpha
      random.nextInt(256), // Red
      random.nextInt(256), // Green
      random.nextInt(256), // Blue
    );
  }
}

class LegendItem extends StatelessWidget {
  final Color color;
  final String label;

  const LegendItem({Key? key, required this.color, required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min, // Make sure the Row takes minimal space

      children: [
        Container(
          width: 16,
          height: 16,
          color: color, // Color box for the legend
        ),
        const SizedBox(width: 8), // Space between color box and label
        Text(label),
      ],
    );
  }
}

/*
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PieChartWidget extends StatelessWidget {
  const PieChartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        PieChartData(
          sections: [
            PieChartSectionData(
              value: 50, // Kochi
              color: Colors.blue,
              title: '50%', // Empty title to fill the slice
              radius: 150, // Adjust slice radius as needed
              titleStyle: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.normal,
                fontSize: 20,
              ),
            ),
            PieChartSectionData(
              value: 30, // Kottayam
              color: Colors.green,
              title: '30 %', // Empty title to fill the slice
              radius: 150, // Adjust slice radius as needed
              titleStyle: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.normal,
                fontSize: 20,
              ),
            ),
            PieChartSectionData(
              value: 20, // Calicut
              color: Colors.orange,
              title: '20 %', // Empty title to fill the slice
              radius: 150, // Adjust slice radius as needed
              titleStyle: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.normal,
                fontSize: 20,
              ),
            ),
          ],
          // borderData: FlBorderData(
          //   show: true,
          //   border: Border.all(color: Colors.red, width: 10),
          // ),
          centerSpaceRadius: 0, // Remove center space for full circle effect
          sectionsSpace: 0, //Remove space between slices
        ),
      ),
    );
  }
}
*/

/*
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PieChartWidget extends StatelessWidget {
  const PieChartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        PieChartData(
          sections: [
            PieChartSectionData(
              value: 50, // Kochi
              title: 'Kochi',
              color: Colors.blue,
            ),
            PieChartSectionData(
              value: 30, // Kottayam
              title: 'Kottayam',
              color: Colors.green,
            ),
            PieChartSectionData(
              value: 20, // Calicut
              title: 'Calicut',
              color: Colors.orange,
            ),
          ],
          borderData: FlBorderData(show: false),
          centerSpaceRadius: 40, // Adjust center space if needed
        ),
      ),
    );
  }
}
*/