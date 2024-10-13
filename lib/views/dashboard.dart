import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vetqure_task/views/graphs/client_graph/client_graph.dart';
import 'package:vetqure_task/views/graphs/demographics_chart/user_demographics.dart';
import 'package:vetqure_task/views/graphs/revenue_breakdown/revenue_breakdown.dart';
import 'package:vetqure_task/views/graphs/revenue_expense_tracker/revenue_expense_tracker.dart';
import 'package:vetqure_task/views/title_bar.dart';
import 'package:vetqure_task/views/widgets/custom_buttons.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title bar
            const TitleBar(),
            // Section with two side-by-side graphs
            SizedBox(
              //flex: 6,
              height: 473, // Fixed height for the graph section

              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      // margin: EdgeInsets.all(8.0),
                      margin: const EdgeInsets.fromLTRB(28, 8, 8, 8),
                      color: Colors.white,
                      child: const Center(child: ClientGraph()),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(8, 8, 28, 8),
                      color: Colors.white,
                      child: const Center(child: UserDemographics()),
                    ),
                  ),
                ],
              ),
            ),

            // Small graphs section
            SizedBox(
              height: 200, // Fixed height for the graph section

              child: Container(
                margin: const EdgeInsets.fromLTRB(28, 8, 28, 8),
                color: Colors.white,
                height: 100, // Adjust the height for smaller graphs
                child: const Center(child: RevenueBreakdown()),
              ),
            ),

            // Bottom section with three graphs side by side
            SizedBox(
              height: 400, // Fixed height for the graph section

              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(28, 8, 8, 8),
                      color: Colors.white,
                      child: const Center(child: RevenueExpenseTracker()),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(8.0),
                      color: Colors.white,
                      child: Center(child: Text('Graph 4')),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(8, 8, 28, 8),
                      color: Colors.white,
                      child: const Center(child: Text('Graph 5')),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
