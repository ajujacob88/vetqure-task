import 'package:flutter/material.dart';
import '../../models/order_item.dart';

class RecentOrdersWidget extends StatelessWidget {
  final OrderModel _orderModel = OrderModel();

  RecentOrdersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _orderModel.orders.length,
      itemBuilder: (context, index) {
        final order = _orderModel.orders[index];
        return ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(order.imageUrl),
            radius: 20,
          ),
          title: Text(
            order.orderId,
            style: const TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(order.date),
          trailing: Container(
            width: 90,
            height: 30,
            decoration: BoxDecoration(
              color: order.status == 'Pending'
                  ? const Color.fromARGB(255, 253, 0, 0)
                  : order.status == 'Delivered'
                      ? const Color.fromARGB(255, 2, 189, 80)
                      : const Color.fromARGB(255, 255, 153, 0),
              borderRadius: BorderRadius.circular(12.0), // Rounded corners
            ),
            child: Center(
              child: Text(
                order.status,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.white, // White text color
                  fontWeight:
                      FontWeight.normal, // Optional for better visibility
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
