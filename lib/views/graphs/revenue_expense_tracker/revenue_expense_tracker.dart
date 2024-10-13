import 'package:flutter/cupertino.dart';
import 'package:vetqure_task/views/graphs/demographics_chart/pie_chart_widget.dart';
import 'package:vetqure_task/views/graphs/revenue_expense_tracker/revenue_exp_tracker_barchart.dart';
import 'package:vetqure_task/views/widgets/graph_header.dart';

class RevenueExpenseTracker extends StatelessWidget {
  const RevenueExpenseTracker({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // const GraphHeader(
          //   title: 'Revenue vs Expense Tracker',
          // ),
          const Text(
            'Revenue vs Expense Tracker',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.normal,
            ),
          ),
          const SizedBox(height: 40.0),
          Expanded(child: RevenueExpTrackerBarchart()),
        ],
      ),
    );
  }
}
