class RevenueItem {
  final String name;
  final double amount;

  RevenueItem({required this.name, required this.amount});
}

//dummy data and logic to calculate percentages based on the total revenue.

class RevenueModel {
  final List<RevenueItem> items = [
    RevenueItem(name: 'Medicine', amount: 20000),
    RevenueItem(name: 'Lab Test', amount: 15000),
    RevenueItem(name: 'Accessories', amount: 10000),
    RevenueItem(name: 'Consultation', amount: 25000),
    RevenueItem(name: 'Grooming', amount: 3000),
  ];

  double getTotalRevenue() {
    return items.fold(0, (total, item) => total + item.amount);
  }

  double getPercentage(String itemName) {
    double total = getTotalRevenue();
    RevenueItem? item = items.firstWhere((item) => item.name == itemName,
        orElse: () => RevenueItem(name: '', amount: 0));
    return total > 0 ? (item.amount / total) * 100 : 0;
  }
}
