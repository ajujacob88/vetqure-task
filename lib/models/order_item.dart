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
      imageUrl:
          'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.petsy.online%2Fproducts%2Fhimalaya-healthy-pet-food-puppy-chicken-rice&psig=AOvVaw14S0MPd8K03R7Fu0mBpPnY&ust=1728929510876000&source=images&cd=vfe&opi=89978449&ved=2ahUKEwiwhvy7-ouJAxUtcWwGHVIeDCMQjRx6BAgAEBk',
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
