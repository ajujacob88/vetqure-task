import 'package:flutter/material.dart';
import 'package:vetqure_task/controllers/client_graph_controller.dart';
import 'package:vetqure_task/views/graphs/client_graph/line_chart_widget.dart';
import 'package:vetqure_task/views/widgets/graph_header.dart';
import 'package:vetqure_task/views/widgets/walk_in_client_stats.dart';

class ClientGraph extends StatelessWidget {
  const ClientGraph({super.key});

  @override
  Widget build(BuildContext context) {
    // Fetch data from the controller
    final ClientGraphController controller = ClientGraphController();

    // Calculate the total walk-ins
    final int totalWalkIn = controller.getTotalWalkIn();

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // First row with 'Walk in Client' and Filter button
          const GraphHeader(title: 'Walk in Client'),
          const SizedBox(height: 20.0),

          // Second row with Total Walking and New Client data
          WalkInClientStats(
            totalWalkIn: totalWalkIn,
          ),
          const SizedBox(height: 40.0),

          //Third row consists of line chart
          const Expanded(child: LineChartWidget()),
        ],
      ),
    );
  }
}
