import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:vetqure_task/controllers/revenue_expense_tracker_controller.dart';

class RevenueExpTrackerBarchart extends StatelessWidget {
  final RevenueExpenseTrackerController _revenueExpenseController =
      RevenueExpenseTrackerController();

  RevenueExpTrackerBarchart({super.key});

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        alignment: BarChartAlignment.spaceAround,
        minY: 0,
        maxY: 50000, // The maximum value on the Y-axis
        barGroups: _buildBarGroups(), // Build the bars dynamically
        gridData: const FlGridData(show: false), // Remove grid lines

        titlesData: FlTitlesData(
          leftTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              reservedSize: 60,
              interval: 10000,
              getTitlesWidget: (double value, TitleMeta meta) {
                if (value % 10000 == 0) {
                  return Text('₹ ${value.toInt()}');
                }
                return const SizedBox();
              },
            ),
          ),
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              reservedSize: 40,
              interval: 1,
              getTitlesWidget: (double value, TitleMeta meta) {
                const style = TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  fontSize: 14,
                );
                switch (value.toInt()) {
                  case 0:
                    return const Text('Revenue', style: style);
                  case 1:
                    return const Text('Expense', style: style);
                  case 2:
                    return const Text('Miscellaneous', style: style);
                  case 3:
                    return const Text('Other', style: style);
                  default:
                    return const Text('');
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
      ),
    );
  }

  // Function to dynamically generate bar groups based on the items
  List<BarChartGroupData> _buildBarGroups() {
    List<Color> barColors = [
      const Color.fromARGB(255, 12, 138, 16), // For Revenue
      const Color.fromARGB(255, 167, 35, 26), // For Expense
      const Color.fromARGB(255, 144, 92, 16), // For Miscellaneous
      const Color.fromARGB(255, 23, 98, 163), // For Other
    ];

    return List.generate(_revenueExpenseController.items.length, (index) {
      final item = _revenueExpenseController.items[index];
      return BarChartGroupData(
        x: index,
        barRods: [
          BarChartRodData(
              toY: item.amount, // Set the height of each bar
              color: barColors[index],
              width: 50,
              borderRadius: BorderRadius.zero),
        ],
      );
    });
  }
}
