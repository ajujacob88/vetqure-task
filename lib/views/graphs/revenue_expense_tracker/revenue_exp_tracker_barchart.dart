import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:vetqure_task/controllers/revenue_expense_tracker_controller.dart';

class RevenueExpenseChart extends StatelessWidget {
  final RevenueExpenseController controller = RevenueExpenseController();

  RevenueExpenseChart({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300, // Set the height of the chart
      child: BarChart(
        BarChartData(
          alignment: BarChartAlignment.spaceAround,
          maxY: 50000, // The maximum value on the Y-axis
          barGroups: _buildBarGroups(), // Build the bars dynamically
          gridData: const FlGridData(show: false), // Remove grid lines
          borderData: FlBorderData(
            show: true,
            border: const Border(
              left: BorderSide(color: Colors.black),
              bottom: BorderSide(color: Colors.black),
              right: BorderSide(color: Colors.transparent),
              top: BorderSide(color: Colors.transparent),
            ),
          ), // Remove borders
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
        ),
      ),
    );
  }

  // Function to dynamically generate bar groups based on the items
  List<BarChartGroupData> _buildBarGroups() {
    return List.generate(controller.items.length, (index) {
      final item = controller.items[index];
      return BarChartGroupData(
        x: index,
        barRods: [
          BarChartRodData(
            toY: item.amount, // Set the height of each bar
            color: Colors.blue, // You can use different colors for each bar
            width: 20,
          ),
        ],
      );
    });
  }
}
