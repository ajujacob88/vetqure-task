import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:vetqure_task/controllers/client_graph_controller.dart';
import 'package:vetqure_task/models/client_graph_model.dart';

class LineChartWidget extends StatelessWidget {
  const LineChartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // Fetch data from the controller
    final ClientGraphController controller = ClientGraphController();
    final List<WalkInClientData> data = controller.getWalkInClientData();

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
                int index = value.toInt() - 1;
                if (index >= 0 && index < data.length) {
                  return Text(data[index].timeSlot);
                }
                return const SizedBox();
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
            spots: data
                .asMap()
                .entries
                .map((entry) => FlSpot(
                      entry.key + 1.0,
                      entry.value.walkInCount,
                    ))
                .toList(),
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
