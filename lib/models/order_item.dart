import 'package:flutter/material.dart';

class OrderItem {
  final String orderId;
  final String date;
  final String imageUrl;
  final String status;

  OrderItem({
    required this.orderId,
    required this.date,
    required this.imageUrl,
    required this.status,
  });
}

class OrderModel {
  final List<OrderItem> orders = [
    OrderItem(
      orderId: 'ORD001',
      date: '2024-10-01',
      imageUrl: 'https://via.placeholder.com/50',
      status: 'Pending',
    ),
    OrderItem(
      orderId: 'ORD002',
      date: '2024-10-02',
      imageUrl: 'https://via.placeholder.com/50',
      status: 'Delivered',
    ),
    OrderItem(
      orderId: 'ORD003',
      date: '2024-10-03',
      imageUrl: 'https://via.placeholder.com/50',
      status: 'Return',
    ),
    OrderItem(
      orderId: 'ORD001',
      date: '2024-10-01',
      imageUrl: 'https://via.placeholder.com/50',
      status: 'Pending',
    ),
    OrderItem(
      orderId: 'ORD002',
      date: '2024-10-02',
      imageUrl: 'https://via.placeholder.com/50',
      status: 'Delivered',
    ),
    OrderItem(
      orderId: 'ORD003',
      date: '2024-10-03',
      imageUrl: 'https://via.placeholder.com/50',
      status: 'Return',
    ),
  ];
}
