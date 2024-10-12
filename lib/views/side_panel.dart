import 'package:flutter/material.dart';

class SidePanel extends StatelessWidget {
  final List<Map<String, dynamic>> buttons;
  final int selectedIndex;
  final ValueChanged<int> onButtonPressed;

  const SidePanel({
    super.key,
    required this.buttons,
    required this.selectedIndex,
    required this.onButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width:
          MediaQuery.of(context).size.width * 0.15, // 15% of the screen width
      color: const Color(0xFF00358C),
      child: Column(
        children: [
          const SizedBox(height: 40), // Space at the top
          // Profile picture button
          ElevatedButton(
            onPressed: () {
              // Add action when the button is pressed
            },
            style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              padding: const EdgeInsets.all(10),
            ),
            child: const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/images/profile.jpg'),
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'Aju Jacob',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),

          // Buttons in the side panel
          ...buttons.asMap().entries.map(
            (entry) {
              int index = entry.key;
              String label = entry.value['label'];
              IconData icon = entry.value['icon'];

              bool isSelected = index == selectedIndex;

              return Padding(
                padding: label == 'Logout'
                    ? const EdgeInsets.symmetric(
                        vertical: 38.0, horizontal: 12.0)
                    : const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 12.0),
                child: ElevatedButton(
                  onPressed: () => onButtonPressed(index), // Call the callback
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        isSelected ? Colors.white : Colors.transparent,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  child: Row(
                    children: [
                      Icon(icon,
                          color: isSelected
                              ? const Color(0xFF00358C)
                              : Colors.white),
                      const SizedBox(width: 10),
                      Text(
                        label,
                        style: TextStyle(
                          color: isSelected
                              ? const Color(0xFF00358C)
                              : Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
