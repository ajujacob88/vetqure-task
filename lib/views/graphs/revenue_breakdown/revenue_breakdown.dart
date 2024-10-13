import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vetqure_task/controllers/revenue_controller.dart';
import 'package:vetqure_task/models/revenue_model.dart';
import 'package:vetqure_task/views/graphs/demographics_chart.dart/pie_chart_widget.dart';
import 'package:vetqure_task/views/graphs/revenue_breakdown/revenue_pie_chart_widget.dart';
import 'package:vetqure_task/views/widgets/graph_header.dart';

class RevenueBreakdown extends StatelessWidget {
  const RevenueBreakdown({super.key});

  @override
  Widget build(BuildContext context) {
    final RevenueController _controller = RevenueController();

    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //          Text('Revenue Breakdown'),

          const GraphHeader(title: 'Revenue Breakdown'),
          const SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: _controller.getRevenueItems().map((item) {
              double percentage = _controller.getItemPercentage(item.name);
              Color activeColor = _controller.getItemColor(item.name);
              return Column(
                children: [
                  RevenuePieChartWidget(
                    percentage: percentage,
                    //activeColor: Colors.blue,
                    activeColor: activeColor,
                    label: item.name,
                  ),
                ],
              );
            }).toList(),

            // children: [
            //   RevenuePieChartWidget(
            //     percentage: 60,
            //     activeColor: Colors.blue,
            //     label: 'Medicine Stock',
            //   ),
            //   RevenuePieChartWidget(
            //     percentage: 30,
            //     activeColor: Colors.green,
            //     label: 'Medicine Stock',
            //   ),
            //   RevenuePieChartWidget(
            //     percentage: 12,
            //     activeColor: Colors.orange,
            //     label: 'Medicine Stock',
            //   ),
            //   RevenuePieChartWidget(
            //     percentage: 75,
            //     activeColor: Colors.red,
            //     label: 'Medicine Stock',
            //   ),
            //   RevenuePieChartWidget(
            //     percentage: 8,
            //     activeColor: Colors.yellow,
            //     label: 'Medicine Stock',
            //   ),
            // ],
          ),
        ],
      ),
    );
  }
}
