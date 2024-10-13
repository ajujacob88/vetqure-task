import 'package:flutter/cupertino.dart';
import 'package:vetqure_task/views/graphs/revenue_expense_tracker/rev_exp_tracker_barchart_widget.dart';

class RevenueExpenseTracker extends StatelessWidget {
  const RevenueExpenseTracker({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Revenue vs Expense Tracker',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 40.0),
          Expanded(child: RevenueExpTrackerBarchart()),
        ],
      ),
    );
  }
}
