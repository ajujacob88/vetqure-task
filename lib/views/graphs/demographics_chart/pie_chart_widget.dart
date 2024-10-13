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

    // Generate colors for each entry and store them in a map
    final Map<String, Color> colors = Map.fromEntries(
      demographicsData.keys.map((key) => MapEntry(key, _getRandomColor())),
    );

    return Column(
      // mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: 300, // Fixed height for the pie chart

          child: AspectRatio(
            aspectRatio: 1,
            child: PieChart(
              PieChartData(
                sections: demographicsData.entries
                    .map(
                      (entry) => PieChartSectionData(
                        value: entry.value,
                        color: colors[entry.key]!, // Use predefined color
                        title:
                            '${((entry.value / total) * 100).toStringAsFixed(0)}%', // Display percentage
                        radius: 130,
                        titleStyle: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontSize: 20,
                        ),
                        showTitle: true,
                      ),
                    )
                    .toList(),
                borderData: FlBorderData(show: false),
                centerSpaceRadius: 0,
                // sectionsSpace: 0,
              ),
            ),
          ),
        ),
        const SizedBox(height: 20.0),
        // Legend section
        Center(
          child: Wrap(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            spacing: 16.0, // Add some spacing between legend items
            // direction: Axis.horizontal,
            runSpacing: 4.0, // Space between rows of items (if they wrap)

            alignment: WrapAlignment.start,
            runAlignment: WrapAlignment.start,
            children: demographicsData.entries
                .map((entry) => LegendItem(
                      color:
                          colors[entry.key]!, // Use the same predefined color
                      // label:
                      //     '${entry.key} (${((entry.value / total) * 100).toStringAsFixed(0)}%)',
                      label: '${entry.key} ',
                    ))
                .toList(),
          ),
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

  const LegendItem({super.key, required this.color, required this.label});

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
