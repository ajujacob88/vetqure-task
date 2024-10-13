import 'package:flutter/cupertino.dart';
import 'package:vetqure_task/views/orders/recent_orders_widget.dart';

class StaffAvailability extends StatelessWidget {
  const StaffAvailability({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Staff Availability',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10.0),
          Expanded(child: RecentOrdersWidget()),
        ],
      ),
    );
  }
}
