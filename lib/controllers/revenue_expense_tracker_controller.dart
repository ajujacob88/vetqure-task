import 'package:vetqure_task/models/revenue_expense_tracker_model.dart';

class RevenueExpenseTrackerController {
  final RevenueExpenseModel _model = RevenueExpenseModel();

  List<RevenueExpenseItem> get items => _model.items;
}
