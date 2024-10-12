import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vetqure_task/views/widgets/custom_buttons.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title bar
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16.0),
            color: Colors.white, // Background color for title bar
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Title on the left
                Text(
                  'Title',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // Buttons on the right
                Row(
                  children: [
                    buildButtonWithIconText(
                        'Message', CupertinoIcons.chat_bubble_fill),
                    const SizedBox(width: 8.0),
                    buildButtonWithIconText('Cart', CupertinoIcons.cart_fill),
                    const SizedBox(width: 8.0),
                    buildButtonWithIconText(
                        'Notifications', Icons.notifications),
                    IconButton(
                      icon: const Icon(Icons.logout),
                      onPressed: () {
                        // Handle button press
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Section with two side-by-side graphs
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    // margin: EdgeInsets.all(8.0),
                    margin: const EdgeInsets.fromLTRB(28, 8, 8, 8),
                    color: Colors.white,
                    child: const Center(child: Text('Graph 1')),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(8, 8, 28, 8),
                    color: Colors.white,
                    child: const Center(child: Text('Graph 2')),
                  ),
                ),
              ],
            ),
          ),

          // Small graphs section
          Container(
            margin: const EdgeInsets.fromLTRB(28, 8, 28, 8),
            color: Colors.white,
            height: 100, // Adjust the height for smaller graphs
            child: const Center(child: Text('Small Graphs Section')),
          ),

          // Bottom section with three graphs side by side
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(28, 8, 8, 8),
                    color: Colors.white,
                    child: const Center(child: Text('Graph 3')),
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
    );
  }
}
