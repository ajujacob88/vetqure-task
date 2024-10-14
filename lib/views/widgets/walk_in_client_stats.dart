import 'package:flutter/material.dart';

class WalkInClientStats extends StatelessWidget {
  const WalkInClientStats({super.key, required this.totalWalkIn});
  final int totalWalkIn;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        // Total Walking section
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '$totalWalkIn', // Total walking count
              style: const TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const Text(
              'Total Walk In',
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey,
              ),
            ),
          ],
        ),

        const SizedBox(width: 40.0),

        // New Client section
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Text(
                  '30', // New client count
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(width: 8.0),
                // Arrow and percentage change
                Row(
                  children: [
                    Icon(
                      Icons.arrow_upward,
                      color: Colors.green[700], // Up arrow color
                      size: 20.0,
                    ),
                    const Text(
                      '12%', // Percentage change
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Text(
              'New Client',
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey,
              ),
            ),
          ],
        ),

        const SizedBox(width: 50.0),
        // Existing Client section
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Text(
                  '20', // Existing client count
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(width: 8.0),
                // Arrow and percentage change
                Row(
                  children: [
                    Icon(
                      Icons.arrow_downward,
                      color: Colors.red[700], // Up arrow color
                      size: 20.0,
                    ),
                    const Text(
                      '12%', // Percentage change
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Text(
              'Existing Client',
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
