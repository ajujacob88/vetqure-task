import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vetqure_task/controllers/revenue_controller.dart';
import 'package:vetqure_task/models/revenue_model.dart';
import 'package:vetqure_task/views/graphs/demographics_chart/pie_chart_widget.dart';
import 'package:vetqure_task/views/graphs/revenue_breakdown/revenue_pie_chart_widget.dart';
import 'package:vetqure_task/views/widgets/graph_header.dart';

class RevenueBreakdown extends StatelessWidget {
  const RevenueBreakdown({super.key});

  @override
  Widget build(BuildContext context) {
    final RevenueController revenueController = RevenueController();

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //const GraphHeader(title: 'Revenue Breakdown'),
          const Text(
            'Revenue Breakdown',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.normal,
            ),
          ),
          const SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: revenueController.getRevenueItems().map((item) {
              double percentage =
                  revenueController.getItemPercentage(item.name);
              Color activeColor = revenueController.getItemColor(item.name);
              double revenue = item.amount;
              return Column(
                children: [
                  RevenuePieChartWidget(
                    percentage: percentage,
                    //activeColor: Colors.blue,
                    activeColor: activeColor,
                    label: item.name,
                    revenue: revenue,
                  ),
                ],
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
