import 'package:flutter/material.dart';
import 'package:vetqure_task/controllers/demographics_controller.dart';
import 'package:vetqure_task/views/graphs/demographics_chart/pie_chart_widget.dart';
import 'package:vetqure_task/views/widgets/graph_header.dart';

class UserDemographics extends StatelessWidget {
  const UserDemographics({super.key});

  @override
  Widget build(BuildContext context) {
    // Instantiate the controller
    final DemographicsController demographicsController =
        DemographicsController();

    // Fetch the demographics data from the controller
    final demographicsData = demographicsController.getDemographicsData();

    // Convert it to a Map<String, double> for the pie chart
    final dataMap = {
      for (var item in demographicsData) item.location: item.walkInCount
    };

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const GraphHeader(title: 'User Demographics'),
          const SizedBox(height: 20.0),
          Expanded(
            child: UserDemographicsPieChart(
              demographicsData: dataMap,
            ),
          ),
        ],
      ),
    );
  }
}
