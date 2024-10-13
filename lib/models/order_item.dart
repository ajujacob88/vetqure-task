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
      orderId: 'ORD1039',
      date: '13-10-2024',
      imageUrl: 'assets/images/order_images/1.jpg',
      status: 'Pending',
    ),
    OrderItem(
      orderId: 'ORD1038',
      date: '13-10-2024',
      imageUrl: 'assets/images/order_images/2.jpg',
      status: 'Delivered',
    ),
    OrderItem(
      orderId: 'ORD1037',
      date: '12-10-2024',
      imageUrl: 'assets/images/order_images/3.png',
      status: 'Pending',
    ),
    OrderItem(
      orderId: 'ORD1036',
      date: '12-10-2024',
      imageUrl: 'assets/images/order_images/4.png',
      status: 'Return',
    ),
    OrderItem(
      orderId: 'ORD1035',
      date: '11-10-2024',
      imageUrl: 'assets/images/order_images/5.png',
      status: 'Delivered',
    ),
    OrderItem(
      orderId: 'ORD1034',
      date: '11-10-2024',
      imageUrl: 'assets/images/order_images/6.png',
      status: 'Return',
    ),
    OrderItem(
      orderId: 'ORD1038',
      date: '13-10-2024',
      imageUrl: 'assets/images/order_images/7.png',
      status: 'Delivered',
    ),
    OrderItem(
      orderId: 'ORD1037',
      date: '12-10-2024',
      imageUrl: 'assets/images/order_images/8.png',
      status: 'Return',
    ),
    OrderItem(
      orderId: 'ORD1036',
      date: '12-10-2024',
      imageUrl: 'assets/images/order_images/9.png',
      status: 'Pending',
    ),
    OrderItem(
      orderId: 'ORD1038',
      date: '13-10-2024',
      imageUrl: 'assets/images/order_images/10.png',
      status: 'Delivered',
    ),
    OrderItem(
      orderId: 'ORD1037',
      date: '12-10-2024',
      imageUrl: 'assets/images/order_images/3.png',
      status: 'Return',
    ),
    OrderItem(
      orderId: 'ORD1036',
      date: '12-10-2024',
      imageUrl: 'assets/images/order_images/4.png',
      status: 'Pending',
    ),
    OrderItem(
      orderId: 'ORD1035',
      date: '11-10-2024',
      imageUrl: 'assets/images/order_images/5.png',
      status: 'Delivered',
    ),
    OrderItem(
      orderId: 'ORD1034',
      date: '11-10-2024',
      imageUrl: 'assets/images/order_images/6.png',
      status: 'Return',
    ),
    OrderItem(
      orderId: 'ORD1038',
      date: '13-10-2024',
      imageUrl: 'assets/images/order_images/7.png',
      status: 'Delivered',
    ),
    OrderItem(
      orderId: 'ORD1037',
      date: '12-10-2024',
      imageUrl: 'assets/images/order_images/8.png',
      status: 'Return',
    ),
    OrderItem(
      orderId: 'ORD1034',
      date: '11-10-2024',
      imageUrl: 'assets/images/order_images/6.png',
      status: 'Return',
    ),
    OrderItem(
      orderId: 'ORD1038',
      date: '13-10-2024',
      imageUrl: 'assets/images/order_images/7.png',
      status: 'Delivered',
    ),
    OrderItem(
      orderId: 'ORD1037',
      date: '12-10-2024',
      imageUrl: 'assets/images/order_images/8.png',
      status: 'Return',
    ),
    OrderItem(
      orderId: 'ORD1036',
      date: '12-10-2024',
      imageUrl: 'assets/images/order_images/9.png',
      status: 'Pending',
    ),
    OrderItem(
      orderId: 'ORD1038',
      date: '13-10-2024',
      imageUrl: 'assets/images/order_images/10.png',
      status: 'Delivered',
    ),
    OrderItem(
      orderId: 'ORD1037',
      date: '12-10-2024',
      imageUrl: 'assets/images/order_images/3.png',
      status: 'Return',
    ),
    OrderItem(
      orderId: 'ORD1036',
      date: '12-10-2024',
      imageUrl: 'assets/images/order_images/4.png',
      status: 'Pending',
    ),
  ];
}
