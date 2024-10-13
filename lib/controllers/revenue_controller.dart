import '../models/revenue_model.dart';

//This file will manage the data fetching and business logic. For now, it can serve as a simple controller that interfaces with the RevenueModel.

class RevenueController {
  final RevenueModel _revenueModel = RevenueModel();

  List<RevenueItem> getRevenueItems() {
    return _revenueModel.items;
  }

  double getItemPercentage(String itemName) {
    return _revenueModel.getPercentage(itemName);
  }

  double getTotalRevenue() {
    return _revenueModel.getTotalRevenue();
  }
}
