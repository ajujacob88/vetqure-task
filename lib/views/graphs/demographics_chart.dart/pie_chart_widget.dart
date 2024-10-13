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
          sectionsSpace: 2,
        ),
      ),
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