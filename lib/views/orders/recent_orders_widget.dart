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
    );
  }
}
