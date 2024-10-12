// Custom method to build a button with icon and text
import 'package:flutter/material.dart';

Widget buildButtonWithIconText(String label, IconData icon) {
  return ElevatedButton.icon(
    onPressed: () {
      // Handle button press
    },
    icon: Icon(icon, color: Colors.black),
    label: Text(
      label,
      style: const TextStyle(color: Colors.black),
    ),
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.white, // Background color
      side: const BorderSide(color: Colors.black), // Black border
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0), // Rounded corners
      ),
      padding: const EdgeInsets.symmetric(
          horizontal: 12.0, vertical: 8.0), // Button padding
    ),
  );
}
