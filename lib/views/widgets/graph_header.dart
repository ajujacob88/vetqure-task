import 'package:flutter/material.dart';

class GraphHeader extends StatelessWidget {
  const GraphHeader({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title, // Use the dynamic title here

          style: const TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.normal,
          ),
        ),
        ElevatedButton.icon(
          onPressed: () {
            // Add filter functionality here
          },
          icon: const Icon(
            Icons.filter_alt_outlined,
            color: Color(0xFF00358C),
            size: 21,
          ),
          label: const Text(
            'Filter',
            style: TextStyle(fontSize: 16, color: Color(0xFF00358C)),
          ),
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 1.0),
            backgroundColor: Colors.white,
            // foregroundColor: Colors.transparent,
            side: const BorderSide(color: Color(0xFF00358C)),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0), // Rounded corners
            ),
          ),
        ),
      ],
    );
  }
}
