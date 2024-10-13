import 'package:flutter/material.dart';
import 'package:vetqure_task/views/graphs/client_graph/line_chart_widget.dart';
import 'package:vetqure_task/views/widgets/graph_header.dart';
import 'package:vetqure_task/views/widgets/walk_in_client_stats.dart';

class UserDemographics extends StatelessWidget {
  const UserDemographics({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // First row with 'Walk in Client' and Filter button
          GraphHeader(title: 'User Demographics'),
          SizedBox(height: 20.0),

          // Second row with Total Walking and New Client data
          WalkInClientStats(),
          SizedBox(height: 40.0),

          //Third row consists of line chart
          Expanded(child: LineChartWidget()),
        ],
      ),
    );
  }
}