import 'package:flutter/material.dart';

import '../models/revenue_model.dart';

//This file will manage the data fetching and business logic. For now, it can serve as a simple controller that interfaces with the RevenueModel.

class RevenueController {
  final RevenueModel _revenueModel = RevenueModel();

  // Get list of all revenue items
  List<RevenueItem> getRevenueItems() {
    return _revenueModel.items;
  }

  // Get percentage for a given revenue item by name
  double getItemPercentage(String itemName) {
    return _revenueModel.getPercentage(itemName);
  }

  // Get total revenue for display (if needed)
  double getTotalRevenue() {
    return _revenueModel.getTotalRevenue();
  }

  // Get active color for a given revenue item by name
  Color getItemColor(String itemName) {
    RevenueItem? item = _revenueModel.items.firstWhere(
      (item) => item.name == itemName,
      orElse: () =>
          RevenueItem(name: '', amount: 0, activeColor: Colors.transparent),
    );
    return item.activeColor;
  }
}
