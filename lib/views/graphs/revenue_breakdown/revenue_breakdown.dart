import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vetqure_task/views/graphs/demographics_chart.dart/pie_chart_widget.dart';
import 'package:vetqure_task/views/graphs/revenue_breakdown/revenue_pie_chart_widget.dart';
import 'package:vetqure_task/views/widgets/graph_header.dart';

class RevenueBreakdown extends StatelessWidget {
  const RevenueBreakdown({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GraphHeader(title: 'Revenue Breakdown'),
          SizedBox(height: 20.0),
          Expanded(
            child: RevenuePieChartWidget(
              percentage: 60,
              activeColor: Colors.blue,
              label: 'Medicine Stock',
            ),
          ),
        ],
      ),
    );
  }
}
