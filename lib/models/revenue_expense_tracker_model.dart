class RevenueExpenseItem {
  final String category;
  final double amount;

  RevenueExpenseItem({required this.category, required this.amount});
}

class RevenueExpenseModel {
  final List<RevenueExpenseItem> items = [
    RevenueExpenseItem(category: 'Revenue', amount: 50000),
    RevenueExpenseItem(category: 'Expense', amount: 30000),
    RevenueExpenseItem(category: 'Miscellaneous', amount: 15000),
    RevenueExpenseItem(category: 'Other', amount: 10000),
  ];
}
