import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Get screen width
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        children: [
          // Left panel (20% of screen width)
          Container(
            width: screenWidth * 0.2, // 20% of the screen width
            color: const Color(0xFF00358C),
            child: Column(
              children: [
                const SizedBox(height: 20), // Top padding
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Button 1'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Button 2'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Button 3'),
                ),
              ],
            ),
          ),
          // Main content (80% of screen width)
          Container(
            width: screenWidth * 0.8, // 80% of the screen width
            padding: EdgeInsets.all(20), // Padding around the content
            color: Colors.white,
            child: Center(
              child: Text(
                'Main Content Area with Charts and Details',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
