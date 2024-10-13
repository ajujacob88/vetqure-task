import 'package:flutter/cupertino.dart';
import 'package:vetqure_task/views/graphs/revenue_expense_tracker/rev_exp_tracker_barchart_widget.dart';
import 'package:vetqure_task/views/orders/recent_orders_widget.dart';

class RecentOrders extends StatelessWidget {
  const RecentOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Recent Orders',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.normal,
            ),
          ),
          const SizedBox(height: 10.0),
          Expanded(child: RecentOrdersWidget()),
        ],
      ),
    );
  }
}
