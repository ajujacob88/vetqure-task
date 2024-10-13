import 'package:flutter/material.dart';
import '../../models/order_item.dart';

class RecentOrdersWidget extends StatelessWidget {
  final OrderModel orderModel = OrderModel();

  RecentOrdersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recent Orders'),
      ),
      body: ListView.builder(
        itemCount: orderModel.orders.length,
        itemBuilder: (context, index) {
          final order = orderModel.orders[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(order.imageUrl),
              radius: 25,
            ),
            title: Text(order.orderId),
            subtitle: Text(order.date),
            trailing: Text(
              order.status,
              style: TextStyle(
                color: order.status == 'Pending'
                    ? Colors.orange
                    : order.status == 'Delivered'
                        ? Colors.green
                        : Colors.red,
              ),
            ),
          );
        },
      ),
    );
  }
}
