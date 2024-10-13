import 'package:flutter/material.dart';

class RevenueItem {
  final String name;
  final double amount;
  final Color activeColor;

  RevenueItem(
      {required this.name, required this.amount, required this.activeColor});
}

//dummy data and logic to calculate percentages based on the total revenue.

class RevenueModel {
  final List<RevenueItem> items = [
    RevenueItem(
      name: 'Medicine',
      amount: 20000,
      activeColor: Colors.blue,
    ),
    RevenueItem(
      name: 'Lab Test',
      amount: 15000,
      activeColor: Colors.green,
    ),
    RevenueItem(
      name: 'Accessories',
      amount: 10000,
      activeColor: Colors.orange,
    ),
    RevenueItem(
      name: 'Consultation',
      amount: 25000,
      activeColor: Colors.red,
    ),
    RevenueItem(
      name: 'Grooming',
      amount: 3000,
      activeColor: Colors.purple,
    ),
  ];

  double getTotalRevenue() {
    return items.fold(0, (total, item) => total + item.amount);
  }

  double getPercentage(String itemName) {
    double total = getTotalRevenue();
    RevenueItem? item = items.firstWhere((item) => item.name == itemName,
        orElse: () =>
            RevenueItem(name: '', amount: 0, activeColor: Colors.transparent));
    return total > 0 ? (item.amount / total) * 100 : 0;
  }
}
