import 'package:flutter/material.dart';
import 'side_panel.dart';
import 'dashboard.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0; // Track the selected button

  // Define the buttons with text and icons
  final List<Map<String, dynamic>> buttons = [
    {'icon': Icons.view_comfy_alt, 'label': 'Dashboard'},
    {'icon': Icons.calendar_month_sharp, 'label': 'Calendar'},
    {'icon': Icons.people, 'label': 'Client'},
    {'icon': Icons.person, 'label': 'Profile'},
    {'icon': Icons.attach_money, 'label': 'Finance'},
    {'icon': Icons.inventory, 'label': 'Inventory'},
    {'icon': Icons.shopping_cart, 'label': 'Order'},
    {'icon': Icons.logout, 'label': 'Logout'},
  ];

  // Method to get the currently selected content view
  Widget _getSelectedContent() {
    switch (selectedIndex) {
      case 0:
        return Dashboard(); // Dashboard view
      case 1:
        return const Center(child: Text('Calendar Content'));
      case 2:
        return const Center(child: Text('Client Content'));
      case 3:
        return const Center(child: Text('Profile Content'));
      case 4:
        return const Center(child: Text('Finance Content'));
      case 5:
        return const Center(child: Text('Inventory Content'));
      case 6:
        return const Center(child: Text('Order Content'));
      case 7:
        return const Center(child: Text('Logout Content'));
      default:
        return Dashboard();
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        children: [
          // Left panel (20% of screen width)
          SidePanel(
            buttons: buttons,
            selectedIndex: selectedIndex,
            onButtonPressed: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
          ),
          // Main content (85% of screen width)
          Container(
            width: screenWidth * 0.85,
            padding: const EdgeInsets.all(20),
            // color: const Color.fromARGB(31, 0, 0, 0),
            color: Colors.redAccent,
            child: _getSelectedContent(), // Display selected content
          ),
        ],
      ),
    );
  }
}



/*
//no need
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Track the selected button by storing an index
  int selectedIndex = 0;
  // Define the buttons with text and icons
  final List<Map<String, dynamic>> buttons = [
    {'icon': Icons.view_comfy_alt, 'label': 'Dashboard'},
    {'icon': Icons.calendar_month_sharp, 'label': 'Calendar'},
    {'icon': Icons.people, 'label': 'Client'},
    {'icon': Icons.person, 'label': 'Profile'},
    {'icon': Icons.attach_money, 'label': 'Finance'},
    {'icon': Icons.inventory, 'label': 'Inventory'},
    {'icon': Icons.shopping_cart, 'label': 'Order'},
    {'icon': Icons.logout, 'label': 'Logout'},
  ];
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
            width: screenWidth * 0.15, // 20% of the screen width
            color: const Color(0xFF00358C),
            child: Column(
              children: [
                const SizedBox(height: 40), // Add space at the top
                // Profile picture button
                ElevatedButton(
                  onPressed: () {
                    // Add action when the button is pressed
                  },
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(), // Make the button circular
                    padding: const EdgeInsets.all(
                        10), // Padding around the CircleAvatar
                  ),
                  child: const CircleAvatar(
                    radius: 60, // Profile picture size
                    backgroundImage: AssetImage('assets/images/profile.jpg'),
                  ),
                ),

                const SizedBox(height: 10),
                // Profile name
                const Text(
                  'Aju Jacob', // Replace with your user's name
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20), // Top padding

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
                        onPressed: () {
                          setState(() {
                            selectedIndex = index;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: isSelected
                              ? Colors.white
                              : Colors.transparent, // Text and icon color
                          elevation: 0, //  remove shadow

                          // Define rounded corners
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
                            const SizedBox(
                                width: 10), // Space between icon and text
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
          ),
          // Main content (80% of screen width)
          Container(
            width: screenWidth * 0.8, // 80% of the screen width
            padding: const EdgeInsets.all(20), // Padding around the content
            color: Colors.white,
            child: const Center(
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
*/