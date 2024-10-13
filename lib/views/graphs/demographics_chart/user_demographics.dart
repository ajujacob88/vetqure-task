import 'package:flutter/material.dart';
import 'package:vetqure_task/views/graphs/demographics_chart/pie_chart_widget.dart';
import 'package:vetqure_task/views/widgets/graph_header.dart';

class UserDemographics extends StatelessWidget {
  const UserDemographics({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GraphHeader(title: 'User Demographics'),
          SizedBox(height: 20.0),
          Expanded(
            child: UserDemographicsPieChart(
              // Mention the walkin count, percentage will be automatically calculated
              demographicsData: {
                'Pattom': 100,
                'Thampanoor': 100,
                'Kowdiar': 200,
                'Palayam': 100,
                //'Perorkada': 10,
              },
            ),
          ),
        ],
      ),
    );
  }
}
